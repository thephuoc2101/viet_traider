import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../locale/locale.dart';
import '../../models/model.dart';
import '../../data/data.dart';
import '../../share/share.dart';
import 'bloc.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository repo;

  UserCubit(this.repo) : super(const UserState());

  void onLogin({required String userName, required String password}) async {
    try {
      emit(const UserLoading());
      await repo.login(userName: userName, password: password);
      emit(const UserLogged());
    } catch (err) {
      if (err is DioError) {
        emit(UserError(

        ));
      } else {
        emit(const UserError(error: UI.error_something_went_wrong));
      }
    }
  }

  void onUpdatePassword({String? oldPassword, String? newPassword}) async {
    try {
      emit(const UserLoading());
      await repo.updatePassword(
          oldPassword: oldPassword, newPassword: newPassword);
      emit(const PasswordUpdated());
    } catch (err) {
      if (err is DioError) {
        // emit(UserError(errors: err.toMessages()));
      } else {
        emit(const UserError(errors: [UI.error_something_went_wrong]));
      }
    }
  }


}
