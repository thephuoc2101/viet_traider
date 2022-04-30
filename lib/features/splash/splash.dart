import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/feature.dart';
import '../../resources/resource.dart';
import '../../widgets/widget.dart';
import '../../bloc/bloc.dart';
import '../../locale/locale.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splash';

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  Size get screenSize => MediaQuery.of(context).size;

  AppLocalizations? get appLocalizations => AppLocalizations.of(context);

  ThemeData get theme => Theme.of(context);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(milliseconds: 500), () {
        navigatorKey.currentState?.pushNamedAndRemoveUntil(
            DashBoardScreen.route, (route) => false);
        // BlocProvider.of<AuthCubit>(context).onInitialAuth();
      });
    });
  }

  @override
  Widget build(BuildContext context) => BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            navigatorKey.currentState?.pushNamedAndRemoveUntil(
                DashBoardScreen.route, (route) => false);
          }
        },
        child: Center(
          child: Stack(
            children: [
              Container(
                width: screenSize.width,
                height: screenSize.height,
                color: Colors.white,
                child: Image.asset(Images.app_splash, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Center(child: LoadingWidget()),
              ),
            ],
          ),
        ),
      );
}
