import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String> loginstatusCode() async {
  try {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://stagingapi.chipchip.social/v1/users/login'));
    request.body = json.encode(
        {"phone": "251912121212", "password": "12345678", "country": "ETH"});
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      String responseBody = await response.stream.bytesToString();
      Map<String, dynamic> jsonResponse = json.decode(responseBody);

      if (jsonResponse.containsKey("data")) {
        Map<String, dynamic> data = jsonResponse["data"];
        if (data.containsKey("token")) {
          String token = data["token"];
          print("Token: $token");
          return token;
        } else {
          print("Token not found in the response data.");
          return "false";
        }
      } else {
        print("Data not found in the response.");
        return "false";
      }
    } else {
      print("Request failed: ${response.reasonPhrase}");
      return "false";
    }
    // if (response.statusCode == 200) {
    //   print(await response.stream.bytesToString());

    //   Map<String, dynamic> jsonResponse =
    //       json.decode(await response.stream.bytesToString());

    // } else {
    //   return "false";
    // }

    // if (response.statusCode == 200) {
    //   // final loginModel = loginModelFromJson(response.body);
    //   // return "${loginModel.data!.token ?? ''}";
    //   return "true";
    // } else {
    //   print("Here is the phrase==> ${response.reasonPhrase}");
    //   print("Here is the phrase==> ${response.statusCode}");
    //   return "false";
    // }
  } catch (e, s) {
    print("$e ==> $s");
    return "false";
  }
}
