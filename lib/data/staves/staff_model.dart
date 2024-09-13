import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muscii/constants/svg_strings.dart';
import 'package:muscii/utils/notation.dart';

part 'staff_model.freezed.dart';
part 'staff_model.g.dart';

@freezed
class StaffModel with _$StaffModel {
  const StaffModel._();

  const factory StaffModel({
    @Default(KeySignature.c_maj) KeySignature keySignature,
    @Default([]) List<List<NoteModel>> notes,
    @Default(Clef.treble) Clef? clef,
    String? timeSignature,
  }) = _StaffModel;

  factory StaffModel.fromJson(Map<String, dynamic> json) =>
      _$StaffModelFromJson(json);

  String toSvg() {
    if (notes.isEmpty || notes.first.isEmpty) {
      // todo handle errors way better
      debugPrint("no notes :)");
      return "";
    }

    return buildStaff(offset: mapNoteToOffset(notes.first.first, keySignature));
  }
}

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    required NoteName name,
    @Default(5) int octave,
    @Default(1.0) double duration
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);
}

