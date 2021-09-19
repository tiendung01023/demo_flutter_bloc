class InfoModel {
  final String? username;
  final String? name;
  final String? avatar;

  InfoModel({
    this.username,
    this.name,
    this.avatar,
  });

  InfoModel.fromJson(Map<String, dynamic> json)
    : username = json['username'] as String?,
      name = json['name'] as String?,
      avatar = json['avatar'] as String?;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'username' : username,
    'name' : name,
    'avatar' : avatar
  };
}