import 'package:decyfir/src/common/subroutines.dart';
import 'package:http/http.dart' as http;

class LoginService {
  Future<int> performLoginWithoutToken(String username, String password) async {
    http.Response response = await Subroutines.login(username, password);
    print(response.statusCode);
    print(response.body);
    return response.statusCode;
  }
}
