import 'package:demo_flutter_bloc/main.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageHelper {
  CachedNetworkImageHelper._();

  static Widget placeholder() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  static Widget error() {
    return Container(
      color: Theme.of(navigationKey.currentContext!).primaryColor.withOpacity(0.3),
      child: const Center(
        child: Icon(Icons.panorama),
      ),
    );
  }
}
