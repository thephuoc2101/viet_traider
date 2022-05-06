import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';
import '../share/share.dart';

class AppTabbar extends StatefulWidget {
  final List<String> tabs;
  final List<Widget> tabViews;

  const AppTabbar({
    Key? key,
    required this.tabs,
    required this.tabViews,
  }) : super(key: key);

  @override
  _AppTabbarState createState() => _AppTabbarState();
}

class _AppTabbarState extends State<AppTabbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<Widget> tabs;
  @override
  void initState() {
    tabs = List<Widget>.generate(
        widget.tabs.length,
        (index) => Tab(
              text: widget.tabs[index],
            ));
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          AppCubit _appCubit = BlocProvider.of<AppCubit>(context);
          String? theme = _appCubit.state.model?.theme;
           return Column(
            children: [
              Container(
                height: 32,
                decoration: BoxDecoration(
                  color:  theme == ThemeCodes.light ? const Color(0xffEEEEEF):const Color(0xff282B31),
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                ),
                child: TabBar(
                    controller: _tabController,
                    tabs: tabs
                ),
              ),
              // tab bar view here
              Expanded(
                child: TabBarView(
                    controller: _tabController,
                    children: widget.tabViews
                ),
              ),
            ],
          );
        }
    );
  }
}
