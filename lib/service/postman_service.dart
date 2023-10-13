import 'dart:convert';

import 'package:grocery_mobile_app_for_interview/model/productModel.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  static SharedPreferences? _prefs;
  Future<ProductMoel?> fetchOrder() async {
    _prefs = await SharedPreferences.getInstance();
    try {
      var headers = {
        'Authorization': 'Bearer ${_prefs!.getString('token') ?? ''}'
      };
      var request = http.Request(
          'GET', Uri.parse('https://stagingapi.chipchip.social/v1/products'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        String responseBody = await response.stream.bytesToString();
        Map<String, dynamic> jsonData =
            json.decode(responseBody); // Parse JSON into a Map
        final res = ProductMoel.fromJson(
            jsonData); // Assuming Datum.fromJson expects a Map
        return res;
      } else {
        return null;
      }
    } catch (e, s) {
      print("$e ==> $s");
      return null;
    }
  }
}

Future<String> loginstatusCode(String phone, String password) async {
  try {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://stagingapi.chipchip.social/v1/users/login'));
    request.body = json
        .encode({"phone": "$phone", "password": "$password", "country": "ETH"});
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
  } catch (e, s) {
    print("$e ==> $s");
    return "false";
  }
}
