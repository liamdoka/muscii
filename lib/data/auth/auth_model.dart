import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const AuthModel._();

  const factory AuthModel({
    @Default("") String id,
    @Default("") String accessToken,
    @Default("") String refreshToken,
  }) = _AuthModel;

  bool get isEmpty => (accessToken.isEmpty && refreshToken.isEmpty);
  bool get isAuthenticated => (accessToken.isNotEmpty);
  bool get needsRefresh => (accessToken.isEmpty && refreshToken.isNotEmpty);

  factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);
}

@freezed
class AuthRequestModel with _$AuthRequestModel {
  factory AuthRequestModel({
    required String username,
    required String password,
  }) = _AuthRequestModel;

  factory AuthRequestModel.fromJson(Map<String, dynamic> json) => _$AuthRequestModelFromJson(json);

}