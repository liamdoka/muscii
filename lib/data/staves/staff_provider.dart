
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:muscii/data/auth/auth_provider.dart';
import 'package:muscii/utils/notation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import 'package:muscii/api/api_service.dart';
import 'package:muscii/data/staves/staff_model.dart';

part 'staff_provider.g.dart';

@riverpod
class Staff extends _$Staff {

  @override
  FutureOr<StaffModel> build() async => const StaffModel(
      keySignature: KeySignature.d_maj,
      notes: [[NoteModel(name: NoteName.c_sharp)]]
  );

  Future<void> getRandomStaff() async {
    final auth = ref.read(musciiAuthProvider).value;

    final response = await http.get(
      Uri.http(APIRoutes.baseURL, APIRoutes.randomStaff),
      headers: APIService.headersWithAuth(auth!.accessToken)
    );

    final newStaff = StaffModel.fromJson(jsonDecode(response.body));
    debugPrint(response.body);
    state = AsyncData(newStaff);
  }
}