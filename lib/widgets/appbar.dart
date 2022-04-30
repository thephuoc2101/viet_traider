import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class BaseAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  final bool? centerTitle;
  final bool? leading;
  final List<Widget>? actions;
  final Widget? widgetTitle;
  final Widget? flexibleSpace;

  const BaseAppBar({
    this.title,
    this.centerTitle = true,
    this.leading = true,
    this.actions,
    this.widgetTitle,
    Key? key,
    this.flexibleSpace,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _BaseAppBarState createState() => _BaseAppBarState();
}

class _BaseAppBarState extends State<BaseAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: widget.widgetTitle ??
          Text(
            widget.title ?? '',
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
          ),
      centerTitle: widget.centerTitle,
      elevation: 0,
      flexibleSpace: widget.flexibleSpace,
      leading: widget.leading == true
          ? IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => pop(context),
      )
          : null,
      actions: widget.actions,
    );
  }
}
