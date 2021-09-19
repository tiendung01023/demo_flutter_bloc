import 'info_model.dart';

class NewTodayModel {
  final String? imageUrl;
  final InfoModel? info;

  NewTodayModel({
    this.imageUrl,
    this.info,
  });

  NewTodayModel.fromJson(Map<String, dynamic> json)
    : imageUrl = json['imageUrl'] as String?,
      info = (json['info'] as Map<String,dynamic>?) != null ? InfoModel.fromJson(json['info'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'imageUrl' : imageUrl,
    'info' : info?.toJson()
  };
}