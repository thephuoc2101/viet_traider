import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:open_file/open_file.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'bloc/bloc.dart';
import 'features/feature.dart';
import 'locale/locale.dart';
import 'router/routes.dart';
import 'theme/theme_app.dart';
import 'widgets/widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  final app = App();
  await app.setup();
  runApp(
    MultiProvider(
      providers: [
        Provider.value(value: app),
        Provider.value(value: app.userRepository),
        Provider.value(value: app.stockRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppCubit>.value(value: app.appCubit),
          BlocProvider<AuthCubit>.value(value: app.authCubit),
          BlocProvider<UserCubit>.value(value: app.userCubit),
        ],
        child: MyApp(app: app),
      ), 
    ),
  );
}

class MyApp extends StatefulWidget {
  late final App app;

  MyApp({Key? key, required this.app}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _locale = AppLocalizations.of(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listenWhen: (p, c) => c is Unauthenticated,
          listener: (context, state) {
            // navigatorKey.currentState
            //     ?.pushNamedAndRemoveUntil(LoginScreen.route, (route) => false);
          },
        ),
        BlocListener<UserCubit, UserState>(
          listener: (context, state) {
            LoadingScreen.close();
            if (state is UserLoading) LoadingScreen.show();
            final _authBloc = BlocProvider.of<AuthCubit>(context);
            if (state is UserLogged) {
              _authBloc.onAuthenticated();
              navigatorKey.currentState?.pushNamedAndRemoveUntil(
                  DashBoardScreen.route, (route) => false);
            }
            if (state is UserError) {
              NotifyDialog.showError(
                errors: state.errors,
              ).then((value) {
                final data = state.data as Map<String, dynamic>? ?? {};
              });
            }
          },
        ),
      ],
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp(
            title: _locale?.text(UI.app_name) ?? '',
            navigatorKey: navigatorKey,
            scaffoldMessengerKey: scaffoldMessengerKey,
            debugShowCheckedModeBanner: false,
            theme: ThemeDataExt.build(state.model?.theme),
            onGenerateRoute: routes(widget.app),
            supportedLocales: AppLocalizations.delegate.supportedLocales,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: Locale(state.model?.languageCode ?? "vi",
                state.model?.countryCode ?? 'VN'),
            localeResolutionCallback: AppLocalizations.delegate.resolution(
              fallback: AppLocalizations.delegate.supportedLocales.first,
            ),
          );
        },
      ),
    );
  }
}

