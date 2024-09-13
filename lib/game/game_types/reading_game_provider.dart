import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:muscii/api/api_service.dart';
import 'package:muscii/data/auth/auth_provider.dart';
import 'package:muscii/data/staves/staff_model.dart';
import 'package:muscii/data/staves/staff_provider.dart';
import 'package:muscii/data/user_data/user_data_provider.dart';
import 'package:muscii/utils/notation.dart';
import 'package:muscii/game/game_types/reading_game_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'reading_game_provider.g.dart';

@riverpod
class ReadingGame extends _$ReadingGame {

  @override
  Future<ReadingGameModel> build() async {

    final staff = ref.watch(staffProvider).value;
    if (staff == null) await ref.read(staffProvider.notifier).getRandomStaff();

    return ReadingGameModel(id: 0, elo: 0, questions: [
      QuestionModel(
        prompt: "Play this note on the piano provided",
        staff: staff ?? const StaffModel(
            keySignature: KeySignature.c_maj,
            notes: [[NoteModel(name: NoteName.c, octave: 6)]]
        )
      )
    ]);
  }

  Future<void> submitAnswer(bool isCorrect) async {
    debugPrint(isCorrect.toString());
    if (isCorrect) {
      ref.read(staffProvider.notifier).getRandomStaff();
    }
  }

  Future<void> submitCompletedGame() async {
    final auth = ref.watch(musciiAuthProvider).value;
    final authProvider = ref.read(musciiAuthProvider.notifier);

    if (auth == null) return;
    if (auth.needsRefresh) {
      await authProvider.refresh();
    }

    if (state.hasValue == false) return;
    final completedGame = state.value!.getCompletedGameModel();
    if (completedGame == null) return;
    
    final request = completedGame.copyWith(userId: int.parse(auth.id));
    final response = await http.post(
      Uri.http(APIRoutes.baseURL, APIRoutes.addCompletedGame),
      headers: APIService.headersWithAuth(auth.accessToken),
      body: jsonEncode(request.toJson())
    );

    if (response.statusCode == 200) {
      ref.read(userDataProvider.notifier).sync();
    }

    debugPrint(response.body);

    return;
  }
}