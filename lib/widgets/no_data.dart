import 'package:flutter/material.dart';
import '../resources/resource.dart';
import '../locale/locale.dart';
import 'widget.dart';

class NoData extends StatelessWidget {
  final VoidCallback? onRefresh;

  const NoData({Key? key, this.onRefresh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return onRefresh != null
        ? _buildNoDataRefresh(context)
        : _buildNoData(context);
  }

  Widget _buildNoDataRefresh(BuildContext context) {
    final _locale = AppLocalizations.of(context);
    return RefreshIndicator(
      child: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImage(Images.image_nodata, height: 150.0),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  _locale?.text(UI.error_no_data) ?? '',
                  style: TextStyle(fontSize: 16.0, color: Color(0xff444444)),
                )
              ],
            ),
          ),
          ListView()
        ],
      ),
      onRefresh: () async {
        onRefresh?.call();
      },
    );
  }

  Widget _buildNoData(BuildContext context) {
    final _locale = AppLocalizations.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppImage(Images.image_nodata, height: 150.0),
          SizedBox(
            height: 20.0,
          ),
          Text(
            _locale?.text(UI.error_no_data) ?? '',
            style: TextStyle(fontSize: 16.0, color: Color(0xff444444)),
          )
        ],
      ),
    );
  }
}
