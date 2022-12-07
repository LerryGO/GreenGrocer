import 'package:green_grocer/src/constants/endpoints.dart';
import 'package:green_grocer/src/services/http_manager.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();
  Future signin({required String email, required String password}) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.signin,
      method: HttpMethods.post,
      body: {
        "email": email,
        "password": password,
      },
    );

    if (result["result"] != null) {
      print(result);
      print('Signin funcionou!');
    } else {
      print(result);
      print('Signin não funcionou!');
    }
  }
}
