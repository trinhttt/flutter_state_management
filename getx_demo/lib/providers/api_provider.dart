import 'package:get/get_connect/connect.dart';

class ApiProvider extends GetConnect {
  // @override
  // void onInit() {
  //   httpClient.baseUrl = 'https://api.covid19api.com';
  //
  //   httpClient.addAuthenticator((dynamic request) async {
  //     final token = "token";
  //     // Set the header
  //     request.headers['authorization'] = "Bearer " + "$token";
  //     return request;
  //   });
  //
  //   //Autenticator will be called 3 times if HttpStatus is
  //   //HttpStatus.unauthorized
  //   httpClient.maxAuthRetries = 3;
  // }

  @override
  Future<Response<dynamic>> getData(String path) => get(path);
}

