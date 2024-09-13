// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadingGameModel _$ReadingGameModelFromJson(Map<String, dynamic> json) {
  return _ReadingGameModel.fromJson(json);
}

/// @nodoc
mixin _$ReadingGameModel {
  int get id => throw _privateConstructorUsedError;
  int get elo => throw _privateConstructorUsedError;
  List<QuestionModel> get questions => throw _privateConstructorUsedError;
  int? get startTime => throw _privateConstructorUsedError;

  /// Serializes this ReadingGameModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadingGameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingGameModelCopyWith<ReadingGameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingGameModelCopyWith<$Res> {
  factory $ReadingGameModelCopyWith(
          ReadingGameModel value, $Res Function(ReadingGameModel) then) =
      _$ReadingGameModelCopyWithImpl<$Res, ReadingGameModel>;
  @useResult
  $Res call({int id, int elo, List<QuestionModel> questions, int? startTime});
}

/// @nodoc
class _$ReadingGameModelCopyWithImpl<$Res, $Val extends ReadingGameModel>
    implements $ReadingGameModelCopyWith<$Res> {
  _$ReadingGameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingGameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? elo = null,
    Object? questions = null,
    Object? startTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      elo: null == elo
          ? _value.elo
          : elo // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingGameModelImplCopyWith<$Res>
    implements $ReadingGameModelCopyWith<$Res> {
  factory _$$ReadingGameModelImplCopyWith(_$ReadingGameModelImpl value,
          $Res Function(_$ReadingGameModelImpl) then) =
      __$$ReadingGameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int elo, List<QuestionModel> questions, int? startTime});
}

/// @nodoc
class __$$ReadingGameModelImplCopyWithImpl<$Res>
    extends _$ReadingGameModelCopyWithImpl<$Res, _$ReadingGameModelImpl>
    implements _$$ReadingGameModelImplCopyWith<$Res> {
  __$$ReadingGameModelImplCopyWithImpl(_$ReadingGameModelImpl _value,
      $Res Function(_$ReadingGameModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingGameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? elo = null,
    Object? questions = null,
    Object? startTime = freezed,
  }) {
    return _then(_$ReadingGameModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      elo: null == elo
          ? _value.elo
          : elo // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingGameModelImpl extends _ReadingGameModel {
  _$ReadingGameModelImpl(
      {required this.id,
      required this.elo,
      required final List<QuestionModel> questions,
      this.startTime})
      : _questions = questions,
        super._();

  factory _$ReadingGameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadingGameModelImplFromJson(json);

  @override
  final int id;
  @override
  final int elo;
  final List<QuestionModel> _questions;
  @override
  List<QuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final int? startTime;

  @override
  String toString() {
    return 'ReadingGameModel(id: $id, elo: $elo, questions: $questions, startTime: $startTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingGameModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.elo, elo) || other.elo == elo) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, elo,
      const DeepCollectionEquality().hash(_questions), startTime);

  /// Create a copy of ReadingGameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingGameModelImplCopyWith<_$ReadingGameModelImpl> get copyWith =>
      __$$ReadingGameModelImplCopyWithImpl<_$ReadingGameModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadingGameModelImplToJson(
      this,
    );
  }
}

abstract class _ReadingGameModel extends ReadingGameModel {
  factory _ReadingGameModel(
      {required final int id,
      required final int elo,
      required final List<QuestionModel> questions,
      final int? startTime}) = _$ReadingGameModelImpl;
  _ReadingGameModel._() : super._();

  factory _ReadingGameModel.fromJson(Map<String, dynamic> json) =
      _$ReadingGameModelImpl.fromJson;

  @override
  int get id;
  @override
  int get elo;
  @override
  List<QuestionModel> get questions;
  @override
  int? get startTime;

  /// Create a copy of ReadingGameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingGameModelImplCopyWith<_$ReadingGameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  String get prompt => throw _privateConstructorUsedError;
  set prompt(String value) => throw _privateConstructorUsedError;
  StaffModel get staff => throw _privateConstructorUsedError;
  set staff(StaffModel value) => throw _privateConstructorUsedError;
  bool? get correct => throw _privateConstructorUsedError;
  set correct(bool? value) => throw _privateConstructorUsedError;
  int get attempts => throw _privateConstructorUsedError;
  set attempts(int value) => throw _privateConstructorUsedError;
  List<int>? get options => throw _privateConstructorUsedError;
  set options(List<int>? value) => throw _privateConstructorUsedError;

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {String prompt,
      StaffModel staff,
      bool? correct,
      int attempts,
      List<int>? options});

  $StaffModelCopyWith<$Res> get staff;
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? staff = null,
    Object? correct = freezed,
    Object? attempts = null,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      staff: null == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as StaffModel,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool?,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffModelCopyWith<$Res> get staff {
    return $StaffModelCopyWith<$Res>(_value.staff, (value) {
      return _then(_value.copyWith(staff: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String prompt,
      StaffModel staff,
      bool? correct,
      int attempts,
      List<int>? options});

  @override
  $StaffModelCopyWith<$Res> get staff;
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? staff = null,
    Object? correct = freezed,
    Object? attempts = null,
    Object? options = freezed,
  }) {
    return _then(_$QuestionModelImpl(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      staff: null == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as StaffModel,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool?,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionModelImpl extends _QuestionModel {
  _$QuestionModelImpl(
      {required this.prompt,
      required this.staff,
      this.correct,
      this.attempts = 0,
      this.options})
      : super._();

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

  @override
  String prompt;
  @override
  StaffModel staff;
  @override
  bool? correct;
  @override
  @JsonKey()
  int attempts;
  @override
  List<int>? options;

  @override
  String toString() {
    return 'QuestionModel(prompt: $prompt, staff: $staff, correct: $correct, attempts: $attempts, options: $options)';
  }

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionModel extends QuestionModel {
  factory _QuestionModel(
      {required String prompt,
      required StaffModel staff,
      bool? correct,
      int attempts,
      List<int>? options}) = _$QuestionModelImpl;
  _QuestionModel._() : super._();

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

  @override
  String get prompt;
  set prompt(String value);
  @override
  StaffModel get staff;
  set staff(StaffModel value);
  @override
  bool? get correct;
  set correct(bool? value);
  @override
  int get attempts;
  set attempts(int value);
  @override
  List<int>? get options;
  set options(List<int>? value);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletedGameModel _$CompletedGameModelFromJson(Map<String, dynamic> json) {
  return _CompletedGameModel.fromJson(json);
}

/// @nodoc
mixin _$CompletedGameModel {
  int? get userId => throw _privateConstructorUsedError;
  int get timeTaken => throw _privateConstructorUsedError; // in seconds
  int get correctAnswers => throw _privateConstructorUsedError;
  int get incorrectAnswers => throw _privateConstructorUsedError;

  /// Serializes this CompletedGameModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletedGameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedGameModelCopyWith<CompletedGameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedGameModelCopyWith<$Res> {
  factory $CompletedGameModelCopyWith(
          CompletedGameModel value, $Res Function(CompletedGameModel) then) =
      _$CompletedGameModelCopyWithImpl<$Res, CompletedGameModel>;
  @useResult
  $Res call(
      {int? userId, int timeTaken, int correctAnswers, int incorrectAnswers});
}

/// @nodoc
class _$CompletedGameModelCopyWithImpl<$Res, $Val extends CompletedGameModel>
    implements $CompletedGameModelCopyWith<$Res> {
  _$CompletedGameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedGameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? timeTaken = null,
    Object? correctAnswers = null,
    Object? incorrectAnswers = null,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      timeTaken: null == timeTaken
          ? _value.timeTaken
          : timeTaken // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      incorrectAnswers: null == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedGameModelImplCopyWith<$Res>
    implements $CompletedGameModelCopyWith<$Res> {
  factory _$$CompletedGameModelImplCopyWith(_$CompletedGameModelImpl value,
          $Res Function(_$CompletedGameModelImpl) then) =
      __$$CompletedGameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId, int timeTaken, int correctAnswers, int incorrectAnswers});
}

/// @nodoc
class __$$CompletedGameModelImplCopyWithImpl<$Res>
    extends _$CompletedGameModelCopyWithImpl<$Res, _$CompletedGameModelImpl>
    implements _$$CompletedGameModelImplCopyWith<$Res> {
  __$$CompletedGameModelImplCopyWithImpl(_$CompletedGameModelImpl _value,
      $Res Function(_$CompletedGameModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletedGameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? timeTaken = null,
    Object? correctAnswers = null,
    Object? incorrectAnswers = null,
  }) {
    return _then(_$CompletedGameModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      timeTaken: null == timeTaken
          ? _value.timeTaken
          : timeTaken // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      incorrectAnswers: null == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedGameModelImpl implements _CompletedGameModel {
  const _$CompletedGameModelImpl(
      {this.userId,
      required this.timeTaken,
      required this.correctAnswers,
      required this.incorrectAnswers});

  factory _$CompletedGameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedGameModelImplFromJson(json);

  @override
  final int? userId;
  @override
  final int timeTaken;
// in seconds
  @override
  final int correctAnswers;
  @override
  final int incorrectAnswers;

  @override
  String toString() {
    return 'CompletedGameModel(userId: $userId, timeTaken: $timeTaken, correctAnswers: $correctAnswers, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedGameModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.timeTaken, timeTaken) ||
                other.timeTaken == timeTaken) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.incorrectAnswers, incorrectAnswers) ||
                other.incorrectAnswers == incorrectAnswers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, timeTaken, correctAnswers, incorrectAnswers);

  /// Create a copy of CompletedGameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedGameModelImplCopyWith<_$CompletedGameModelImpl> get copyWith =>
      __$$CompletedGameModelImplCopyWithImpl<_$CompletedGameModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedGameModelImplToJson(
      this,
    );
  }
}

abstract class _CompletedGameModel implements CompletedGameModel {
  const factory _CompletedGameModel(
      {final int? userId,
      required final int timeTaken,
      required final int correctAnswers,
      required final int incorrectAnswers}) = _$CompletedGameModelImpl;

  factory _CompletedGameModel.fromJson(Map<String, dynamic> json) =
      _$CompletedGameModelImpl.fromJson;

  @override
  int? get userId;
  @override
  int get timeTaken; // in seconds
  @override
  int get correctAnswers;
  @override
  int get incorrectAnswers;

  /// Create a copy of CompletedGameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedGameModelImplCopyWith<_$CompletedGameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
