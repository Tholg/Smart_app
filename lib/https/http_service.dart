// import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:study/models/user_model.dart';
import 'package:http/http.dart' as http;
// import 'package:loginradius_example/core/constants.dart';

class ApiClient {
  // final Dio _dio = Dio();

  Future<dynamic> login(String username, String password) async {
    final response = await http.post(
        Uri.parse('http://172.31.251.40:3000/auth/login'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
            <String, String>{'username': username, 'password': password}));
    if (response.statusCode == 200) {
      // print(jsonDecode(response.body));
      return jsonDecode(response.body);
    }
  }

  Future<dynamic> register(
      String email, String username, String password) async {
    final response = await http.post(
        Uri.parse('http://localhost:5000/auth/register'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(<String, String>{
          'username': username,
          'email': email,
          'password': password,
          'role': 'admin'
        }));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
  }

  // Future<dynamic> registerUser(Map<String, dynamic>? data) async {
  //   try {
  //     Response response = await _dio.post('http://localhost:5000/auth/register',
  //         data: data,
  //         // queryParameters: {'apikey': ApiSecret.apiKey},
  //         options: Options(headers: {'content-type': 'application/json'}));
  //     return response.data;
  //   } on DioError catch (e) {
  //     return e.response!.data;
  //   }
  // }

  // Future<dynamic> login(String username, String password) async {

  //   try {
  //     Response response = await _dio.post(
  //       'http://0.0.0.0:3000/auth/login',
  //       options: Options(headers: {'content-type': 'application/json'}),
  //       data: {
  //         'username': username,
  //         'password': password,
  //       },

  //       // queryParameters: {'apikey': ApiSecret.apiKey},
  //     );
  //     return response.data;
  //   } on DioError catch (e) {
  //     return e.response!.data;
  //   }
  // }

  // Future<dynamic> getUserProfileData(String accessToken) async {
  //   try {
  //     Response response = await _dio.get(
  //       'https://api.loginradius.com/identity/v2/auth/account',
  //       // queryParameters: {'apikey': ApiSecret.apiKey},
  //       options: Options(
  //         headers: {'Authorization': 'Bearer $accessToken'},
  //       ),
  //     );
  //     return response.data;
  //   } on DioError catch (e) {
  //     return e.response!.data;
  //   }
  // }

  // Future<dynamic> updateUserProfile({
  //   required String accessToken,
  //   required Map<String, dynamic> data,
  // }) async {
  //   try {
  //     Response response = await _dio.put(
  //       'https://api.loginradius.com/identity/v2/auth/account',
  //       data: data,
  //       // queryParameters: {'apikey': ApiSecret.apiKey},
  //       options: Options(
  //         headers: {'Authorization': 'Bearer $accessToken'},
  //       ),
  //     );
  //     return response.data;
  //   } on DioError catch (e) {
  //     return e.response!.data;
  //   }
  // }

  // Future<dynamic> logout(String accessToken) async {
  //   try {
  //     Response response = await _dio.get(
  //       'https://api.loginradius.com/identity/v2/auth/access_token/InValidate',
  //       // queryParameters: {'apikey': ApiSecret.apiKey},
  //       options: Options(
  //         headers: {'Authorization': 'Bearer $accessToken'},
  //       ),
  //     );
  //     return response.data;
  //   } on DioError catch (e) {
  //     return e.response!.data;
  //   }
  // }
}
