import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:seabank_app/core/model/data.dart';
import 'package:seabank_app/core/util/endpoint.dart';

class Api {
  Future<bool> login({
    required String mobileNumber,
    required String password,
  }) async {
    final body = {
      "mobileNumber": mobileNumber,
      "password": password,
    };

    var response = await http.post(
      Uri.parse(Endpoint.login),
      body: json.encode(body),
    );

    if (response.statusCode == 200) {
      print('JSON is ${response.body}');
      return true;
    } else {
      throw Exception("Login failed with status: ${response.statusCode}");
    }
  }

  Future<HomeScreenData> fetchHomeData() async {
    var response = await http.get(
      Uri.parse(Endpoint.home),
    );

    if (response.statusCode == 200) {
      final jsonStringToMap = json.decode(response.body);

      print('JSON is ${jsonStringToMap["data"]}');

      return HomeScreenData.fromMap(jsonStringToMap["data"]);
    } else {
      throw Exception("Fetch data failed with status: ${response.statusCode}");
    }
  }
}
