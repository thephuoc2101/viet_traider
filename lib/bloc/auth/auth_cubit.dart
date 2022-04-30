import 'package:cached_network_image/cached_network_image.dart';
import '../../models/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/data.dart';
import 'bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final UserRepository repo;

  AuthCubit(this.repo) : super(const Unauthenticated());

  void onInitialAuth() async {
    if (repo.isAuthenticated) {
      emit(const Authenticating());
      try {
        final user = await repo.getProfile();
        emit(Authenticated(user: user));
      } catch (error) {
        emit(const Unauthenticated());
      }
    } else {
      emit(const Unauthenticated());
    }
  }

  void onAuthenticated() async {
    try {
      emit(const Authenticating());
      final user = await repo.getProfile();
      if (user?.avatar != null)
        await CachedNetworkImage.evictFromCache(user!.avatar!);
      emit(Authenticated(user: user));
    } catch (error) {
      emit(const Unauthenticated());
    }
  }

  void onLogout() async {
    try {
      repo.logout();
      emit(const Unauthenticated());
    } catch (error) {
      emit(const Unauthenticated());
    }
    emit(const Unauthenticated());
  }
}
