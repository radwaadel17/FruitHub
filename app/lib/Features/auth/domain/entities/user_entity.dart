class UserEntity {
  final String uid;
  final String email;
   String name;

  UserEntity({
    required this.uid,
    required this.email,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
    };
  }
  UserEntity.fromjson(Map<String, dynamic> json)
      : uid = json['uid'],
        email = json['email'],
        name = json['name'];
}