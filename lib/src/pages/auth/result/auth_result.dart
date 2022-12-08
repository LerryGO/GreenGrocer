import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_grocer/src/models/user_model.dart';

part 'auth_result.freezed.dart';

@freezed
class AuthResult with _$AuthResult {
  factory AuthResult.success(UserModel user) = Sucess;
  factory AuthResult.error(String message) = Error;
}
