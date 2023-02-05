import 'package:get/get.dart';

abstract class HttpService extends GetConnect {
  dynamic errorHandler(Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
      case 202:
        final responseJson = response.body.toString();
        return responseJson;
      case 500:
        throw "Server Error pls retry later";
      case 403:
        throw 'Error occurred pls check internet and retry.';
      case 500:
      default:
        throw 'Error occurred retry';
    }
  }

  @override
  void onInit() {
    // add your local storage here to load for every request
    // var token = LocalStorage.readToken();

    httpClient.baseUrl = 'http://10.0.2.2:3000';
    httpClient.defaultContentType = "application/json";

    // httpClient.timeout = Duration(seconds: 8);
    // httpClient.addResponseModifier((request, response) async {
    //   print(response.body);
    // });
    // httpClient.addRequestModifier((request) async {
    //   // add request here
    //   return request;
    // });
    // var headers = {'Authorization': "Bearer $token"};
    // httpClient.addAuthenticator((request) async {
    //   request.headers.addAll(headers);
    //   return request;
    // });

    super.onInit();
  }
}
