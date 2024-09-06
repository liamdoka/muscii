import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:muscii/api/api_service.dart';
import 'package:http/http.dart' as http;
import 'package:muscii/data/auth/auth_model.dart';
import 'package:muscii/data/shared_preferences/shared_preferences_model.dart';
import 'package:muscii/data/user_data/user_data_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class MusciiAuth extends _$MusciiAuth {

  @override
  Future<AuthModel> build() async {
    final token = await MusciiSharedPreferences.refreshToken;
    return const AuthModel().copyWith(refreshToken: token ?? '');
  }

  Future<void> login(AuthRequestModel authRequest) async {
    final response = await http.post(
      Uri.http(APIRoutes.baseURL, APIRoutes.login),
      headers: APIService.headers,
      body: jsonEncode(authRequest.toJson())
    );

    final isError = APIService.isError(response);
    if (isError) {
      debugPrint(response.body);
      return;
    }

    final newAuthModel = AuthModel.fromJson(jsonDecode(response.body));
    state = AsyncData(newAuthModel);
    MusciiSharedPreferences.setRefreshToken(newAuthModel.refreshToken);
    ref.keepAlive();
  }

  Future<void> register(AuthRequestModel authRequest) async {
    final response = await http.post(
      Uri.http(APIRoutes.baseURL, APIRoutes.register),
      headers: APIService.headers,
      body: jsonEncode(authRequest.toJson())
    );

    final isError = APIService.isError(response);
    if (isError) {
      debugPrint(response.body);
      return;
    }

    final newAuthModel = AuthModel.fromJson(jsonDecode(response.body));
    MusciiSharedPreferences.setRefreshToken(newAuthModel.refreshToken);
    state = AsyncData(newAuthModel);
    ref.keepAlive();
  }

  Future<void> refresh() async {
    if (state.value?.refreshToken.isEmpty ?? false) {
      logout();
      return;
    }

    final response = await http.get(
      Uri.http(APIRoutes.baseURL, APIRoutes.refresh),
      headers: APIService.headersWithAuth(state.value!.refreshToken)
    );

    final isError = APIService.isError(response);
    if (isError) {
      logout();
      return;
    }

    final newAuthModel = AuthModel.fromJson(jsonDecode(response.body));
    MusciiSharedPreferences.setRefreshToken(newAuthModel.refreshToken);
    state = AsyncData(newAuthModel);

    ref.read(userDataProvider.notifier).sync();
    ref.keepAlive();
  }

  void logout() {
    state = const AsyncData(AuthModel());
    MusciiSharedPreferences.setRefreshToken('');

    // revoke tokens from server
    http.get(
      Uri.http(APIRoutes.baseURL, APIRoutes.logout),
      headers: APIService.headers
    );
  }

  Future<void> handleAuthError() async {
    _revokeAccessToken();
    if (!state.hasValue) return;
    if (state.value!.needsRefresh) {
      await refresh();
    } else {
      logout();
    }
  }

  void _revokeAccessToken() {
    if (state.hasValue) {
      state = AsyncData(state.value!.copyWith(
          accessToken: ''
      ));
      MusciiSharedPreferences.setRefreshToken('');
    }
  }
}