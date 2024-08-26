import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:muscii/api/api_service.dart';
import 'package:muscii/constants/strings.dart';
import 'package:muscii/login/login_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@riverpod
class UserAuth extends _$UserAuth {

  @override
  Future<LoginModel> build() async => LoginModel(
    isLoggedIn: false,
    username: ''
  );

  Future<void> login(LoginRequestModel loginRequest) async {
    final response = await http.post(
      Uri.http(apiBase, APIRoutes.login),
      headers: apiHeaders,
      body: jsonEncode(loginRequest.toJson())
    );
    ref.keepAlive();

    final newLoginModel = LoginModel.fromJson(jsonDecode(response.body));
    state = AsyncData(newLoginModel);
  }

  Future<void> logout() async {
    final newLoginModel = LoginModel(isLoggedIn: false, username: '');
    state = AsyncData(newLoginModel);
  }
  
  Future<void> signUp(LoginRequestModel signUpRequest) async {
    final response = await http.post(
      Uri.http(apiBase, APIRoutes.signUp),
      headers: apiHeaders,
      body: jsonEncode(signUpRequest.toJson())
    );
    ref.keepAlive();

    LoginModel newLoginModel = LoginModel.fromJson(jsonDecode(response.body));
    state = AsyncData(newLoginModel);
  }
}