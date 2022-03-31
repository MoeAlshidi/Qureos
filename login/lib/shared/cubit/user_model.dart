class User {
  String token;
  User({required this.token});
  factory User.fromJson(Map<String, dynamic> json) =>
      User(token: json['token']);
}
