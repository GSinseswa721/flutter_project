import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiCall {
  final url = "https://qrcodeebackend.herokuapp.com/";
  var dio = Dio();

  getData(apiUrl) async {
    var fullUrl = url + apiUrl;
    print(fullUrl);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    return await dio.get(fullUrl,
        options: Options(headers: {
          'Content-Type': 'application/json',
          // 'Authorization': 'Bearer $token'
        }));
  }

  postData(data, apiUrl) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var fullUrl = url + apiUrl;
    print(fullUrl);
    return await http
        .post(Uri.parse(fullUrl), body: json.encode(data), headers: {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer $token'
    });
  }
}
