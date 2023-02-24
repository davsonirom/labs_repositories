class Repositorios {
  String? name;
  String? user;
  String? avatar;
  String? description;
  Repositorios({
    required this.name,
    required this.user,
    required this.avatar,
    required this.description,
  });

  Repositorios.fromJson(Map<String, dynamic> json) {
    name = json['full_name'];
    user = json['owner']['login'];
    avatar = json['owner']['avatar_url'];
    description = json['description'];
  }
}
