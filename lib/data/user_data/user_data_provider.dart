import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:muscii/api/api_service.dart';
import 'package:muscii/data/auth/auth_provider.dart';
import 'package:muscii/data/user_data/user_data_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'user_data_provider.g.dart';

@riverpod
class UserData extends _$UserData {

  @override

  // TODO ensure that the username isnt null
  Future<UserDataModel> build() async => UserDataModel(
    username: "",
    displayName: "",
    xp: 0,
    streak: 0,
    gamesPlayed: 0,
    perfectGames: 0,
    correctAnswers: 0,
    incorrectAnswers: 0
  );

  Future<void> addXp(int amount) async {
    if (amount < 1) return;

    final authModel = ref.watch(musciiAuthProvider).value;
    final authProvider = ref.read(musciiAuthProvider.notifier);

    if (authModel == null) return;
    if (authModel.needsRefresh) {
      await authProvider.refresh();
    }

    if (!state.hasValue) return;
    final newState = state.value!.copyWith(
      xp: state.value!.xp + amount
    );

    final response = await http.patch(
      Uri.http(APIRoutes.baseURL, APIRoutes.getUser(authModel.id)),
      headers: APIService.headersWithAuth(authModel.accessToken),
      body: jsonEncode(newState.toJson())
    );

    if (APIService.isAuthError(response)) {
      await authProvider.handleAuthError();
    } else if (APIService.isError(response)) {
      debugPrint(response.body);
      return;
    }

    state = AsyncData(newState);
  }


  Future<void> sync() async {
    final authModel = ref.watch(musciiAuthProvider).value;
    final authProvider = ref.read(musciiAuthProvider.notifier);

    if (authModel == null || authModel.isEmpty) return;
    if (authModel.needsRefresh) await authProvider.refresh();

    final response = await http.get(
      Uri.http(APIRoutes.baseURL, APIRoutes.getUser(authModel.id)),
      headers: APIService.headersWithAuth(authModel.accessToken)
    );

    if (APIService.isAuthError(response)) {
      await authProvider.handleAuthError();
      return;
    } else if (APIService.isError(response)) {
      debugPrint(response.body);
      return;
    }

    final newUserDataModel = UserDataModel.fromJson(jsonDecode(response.body));
    state = AsyncData(newUserDataModel);
    ref.keepAlive();
  }
}