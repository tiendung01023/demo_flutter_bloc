import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations implements WidgetsLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);

  static Map<dynamic, dynamic> localizedValues = <dynamic, dynamic>{};
  static final Map<String, String> _cache = <String, String>{};

  static Future<AppLocalizations> load(Locale locale) async {
    await setNewLanguage(locale.languageCode);
    return AppLocalizations(locale);
  }

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  final RegExp _replaceArgRegex = RegExp(r'{}');

  static Future<void> setNewLanguage(
    String? localeName, {
    String localeDefault = 'en',
    bool saveInPrefs = false,
  }) async {
    if (localeName == null || localeName.isEmpty) {
      localeName = localeDefault;
    }

    final String jsonContent =
        await rootBundle.loadString('assets/locale/i18n_$localeName.json');
    localizedValues = json.decode(jsonContent) as Map<dynamic, dynamic>;
    _cache.clear();
  }

  @override
  TextDirection get textDirection => TextDirection.ltr;

  /// acceptNull: Nếu là false và kết quả là null thì sẽ trả về '{*$key not found*}' (thường dùng cho UI)
  /// acceptNull: Nếu là true và kết quả là null thì sẽ trả về null (thường dùng cho logic)
  String text(String key, {List<dynamic>? args, String Function()? orElse}) {
    String? string;

    if (_cache[key] != null && args == null) {
      string = _cache[key];
    } else {
      bool found = true;
      Map<dynamic, dynamic> _values = localizedValues;
      final List<String> _keyParts = key.split('.');
      final int _keyPartsLen = _keyParts.length;
      int index = 0;
      final int lastIndex = _keyPartsLen - 1;

      while (index < _keyPartsLen && found) {
        final dynamic value = _values[_keyParts[index]];

        if (value == null) {
          found = false;
          break;
        }

        if (value is String && index == lastIndex) {
          string = value;

          _cache[key] = string;
          break;
        }

        _values = value as Map<dynamic, dynamic>;
        index++;
      }
    }
    if (string == null && orElse != null) {
      return orElse();
    }
    return _replaceNamedArgs(string ?? '{*$key not found*}', args);
  }

  String _replaceNamedArgs(String res, List<dynamic>? args) {
    if (args == null || args.isEmpty) {
      return res;
    }
    for (final dynamic value in args) {
      res = res.replaceFirst(_replaceArgRegex, '$value');
    }
    return res;
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  final List<Locale> supportedLocales;

  AppLocalizationsDelegate(this.supportedLocales);

  @override
  bool isSupported(Locale? locale) {
    return locale != null && supportedLocales.contains(locale);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }

  LocaleListResolutionCallback listResolution({Locale? fallback}) {
    return (List<Locale>? locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supportedLocales.first;
      } else {
        return _resolve(locales.first, fallback, supported);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale? fallback}) {
    return (Locale? locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported);
    };
  }

  Locale _resolve(
      Locale? locale, Locale? fallback, Iterable<Locale> supported) {
    if (locale == null || !isSupported(locale)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale =
        Locale(locale.languageCode, locale.countryCode);
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }
}
