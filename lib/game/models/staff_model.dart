import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muscii/constants/svg_strings.dart';
import 'package:muscii/utils/notation.dart';

part 'staff_model.freezed.dart';
part 'staff_model.g.dart';

@freezed
class StaffModel with _$StaffModel {
  const StaffModel._();

  const factory StaffModel({
    @Default(KeyName.c_maj) KeyName musicKey,
    @Default([]) List<NoteModel> notes,
    Clef? clef,
    String? timeSignature,
  }) = _StaffModel;

  factory StaffModel.fromJson(Map<String, dynamic> json) =>
      _$StaffModelFromJson(json);

  String toSvg() {
    if (notes.isEmpty) {
      // todo handle errors way better
      print("no notes :)");
      return "";
    }

    return buildStaff(offset: mapNoteToOffset(notes.first, musicKey));
  }
}

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    required NoteName name,
    required int octave,
    @Default(1.0) double duration
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);
}