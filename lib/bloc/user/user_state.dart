import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/data.dart';
import '../../models/model.dart';


part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState() = _UserState;
  const factory UserState.loading() = UserLoading;

  const factory UserState.logged() = UserLogged;


  const factory UserState.passwordUpdated() = PasswordUpdated;

  const factory UserState.error(
      { String? error, List<String>? errors, Object? data}) = UserError;


}
