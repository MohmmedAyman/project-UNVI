class Regiseter {
  late String username;
  late String email;
  late String password;

  // regiseter({this.username, this.email, this.password});

  Regiseter.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
  }
}