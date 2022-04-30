import 'package:viet_traider/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app.dart';
import '../features/feature.dart';
import '../features/splash/splash.dart';
import '../widgets/widget.dart';

var bootStage = 1;

RouteFactory routes(App app) {
  return (RouteSettings settings) {
    var fullScreen = false;
    Widget? screen;

    if (bootStage == 1) {
      bootStage = 2;
      return PageRouteBuilder(
        pageBuilder: (_, __, ___) => SplashScreen(),
      );
    }
    final arguments = settings.arguments as Map<String, dynamic>? ?? {};
    switch (settings.name) {
      case DashBoardScreen.route:
        screen = BlocProvider(
            create: (_) => MarketCubit(app.stockRepository),
            child: const DashBoardScreen());
        break;
      case WebViewScreen.route:
        final url = arguments['url'];
        screen = WebViewScreen(url: url);
        break;
      case AcadChartScreen.route:
        final url = arguments['sym'];
        screen = AcadChartScreen(sym: url);
        break;

      default:
        screen = const DashBoardScreen();
    }

    if (bootStage == 2) {
      bootStage = 3;

      return PageRouteBuilder(
        settings: settings,
        pageBuilder: (BuildContext context, _, __) {
          return screen!;
        },
        transitionDuration: const Duration(milliseconds: 500),
      );
    }

    if (fullScreen) {
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => screen!,
        fullscreenDialog: true,
      );
    }
    return MaterialPageRoute(settings: settings, builder: (context) => screen!);

    // return PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
    //   return screen!;
    // }, transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
    //   return FadeTransition(opacity: animation, child: child);
    // });
  };
}
