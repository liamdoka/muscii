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
  $Res call({int id, int elo, List<QuestionModel> questions});
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
  $Res call({int id, int elo, List<QuestionModel> questions});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadingGameModelImpl implements _ReadingGameModel {
  _$ReadingGameModelImpl(
      {required this.id,
      required this.elo,
      required final List<QuestionModel> questions})
      : _questions = questions;

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
  String toString() {
    return 'ReadingGameModel(id: $id, elo: $elo, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingGameModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.elo, elo) || other.elo == elo) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, elo, const DeepCollectionEquality().hash(_questions));

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

abstract class _ReadingGameModel implements ReadingGameModel {
  factory _ReadingGameModel(
      {required final int id,
      required final int elo,
      required final List<QuestionModel> questions}) = _$ReadingGameModelImpl;

  factory _ReadingGameModel.fromJson(Map<String, dynamic> json) =
      _$ReadingGameModelImpl.fromJson;

  @override
  int get id;
  @override
  int get elo;
  @override
  List<QuestionModel> get questions;

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
  StaffModel get staff => throw _privateConstructorUsedError;
  bool? get correct => throw _privateConstructorUsedError;
  List<int>? get options => throw _privateConstructorUsedError;

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
      {String prompt, StaffModel staff, bool? correct, List<int>? options});

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
      {String prompt, StaffModel staff, bool? correct, List<int>? options});

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
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionModelImpl implements _QuestionModel {
  const _$QuestionModelImpl(
      {required this.prompt,
      required this.staff,
      this.correct,
      final List<int>? options})
      : _options = options;

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

  @override
  final String prompt;
  @override
  final StaffModel staff;
  @override
  final bool? correct;
  final List<int>? _options;
  @override
  List<int>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionModel(prompt: $prompt, staff: $staff, correct: $correct, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.staff, staff) || other.staff == staff) &&
            (identical(other.correct, correct) || other.correct == correct) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prompt, staff, correct,
      const DeepCollectionEquality().hash(_options));

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

abstract class _QuestionModel implements QuestionModel {
  const factory _QuestionModel(
      {required final String prompt,
      required final StaffModel staff,
      final bool? correct,
      final List<int>? options}) = _$QuestionModelImpl;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

  @override
  String get prompt;
  @override
  StaffModel get staff;
  @override
  bool? get correct;
  @override
  List<int>? get options;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
