import 'package:viet_traider/share/constants/constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../locale/locale.dart';
import '../../../bloc/bloc.dart';
import '../../feature.dart';
import '../../stock/widgets/chart_market.dart';

class DashBoardScreen extends StatefulWidget {
  static const route = '/';

  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  Size get screenSize => MediaQuery.of(context).size;

  AppLocalizations? get appLocalizations => AppLocalizations.of(context);

  ThemeData get theme => Theme.of(context);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    StockView(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState() {
    BlocProvider.of<MarketCubit>(context).onLoadListIndexDetail();
    super.initState();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('BottomNavigationBar Sample'),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        floatingActionButton: kReleaseMode ? null : _buildFloatButton(),
      );

  Widget _buildFloatButton() {
    return FloatingActionButton(
      onPressed: () {
        AppCubit _appCubit = BlocProvider.of<AppCubit>(context);
        String? theme = _appCubit.state.model?.theme;
        _appCubit.onChanged(
            model: _appCubit.state.model?.copyWith(
                theme: theme == ThemeCodes.light
                    ? ThemeCodes.dark
                    : ThemeCodes.light));
      },
      child:
          Icon(theme == ThemeCodes.light ? Icons.dark_mode : Icons.light_mode),
    );
  }
}
