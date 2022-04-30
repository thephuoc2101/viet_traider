
import 'bloc/bloc.dart';
import 'data/data.dart';

class App {
  AppCubit get appCubit => _appCubit;
  late AppCubit _appCubit;

  AuthCubit get authCubit => _authCubit;
  late AuthCubit _authCubit;

  UserCubit get userCubit => _userCubit;
  late UserCubit _userCubit;

  UserRepository get userRepository => _userRepository;
  late UserRepository _userRepository;

  StockRepository get stockRepository => _stockRepository;
  late StockRepository _stockRepository;

  UserLocalStorage get userLocalStorage => _userStorage;
  late UserLocalStorage _userStorage;

  late AppApi _api;

  Future<void> setup() async {
    await _setupRepo();
    await _setupBlocs();
  }

  Future<void> _setupRepo() async {
    _userStorage = UserLocalStorage();
    await _userStorage.load();
    _api = AppApi(userLocalStorage: _userStorage, interceptors: [
      AuthInterceptor(userLocalStorage: _userStorage),
      LogInterceptor()
    ]);
    _userRepository = UserRepository(
      api: _api,
      userApi2: _api.getUserApiClient(),
      userApi: _api.getUserApiClient2(),
      userStorage: _userStorage,
    );
    _stockRepository = StockRepository(
      stockApi: _api.getStockApiClient(),
    );

  }

  Future<void> _setupBlocs() async {
    _appCubit = AppCubit(_userRepository);
    _authCubit = AuthCubit(_userRepository);
    _userCubit = UserCubit(_userRepository);
  }
}
