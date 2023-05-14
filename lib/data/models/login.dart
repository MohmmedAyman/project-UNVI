class login {
  late String username;
  late String password;


  login.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }
}