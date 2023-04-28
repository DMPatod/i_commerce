import 'package:http/http.dart' as http;

class LoginService {
  final String apiUri = "dniawo";

  Future<http.Response> postLogin(String username, String password) {
    return http.post(Uri.parse(apiUri), body: {username, password});
  }
}
