import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/bloc.dart';
import '../../../locale/locale.dart';
import '../../../share/share.dart';
import '../../../widgets/widget.dart';

class LanguageDialog extends StatefulWidget {
  static Future<T?> show<T>(
    BuildContext context, {
    String? title,
    String? status,
    String? content,
    VoidCallback? onBack,
    bool? keepVisible,
  }) =>
      showDialog(
        context: context,
        builder: (context) => LanguageDialog(
          onBack: onBack,
          keepVisible: keepVisible,
        ),
      );

  final VoidCallback? onBack;
  final bool? keepVisible;

  LanguageDialog({
    Key? key,
    this.onBack,
    this.keepVisible = true,
  }) : super(key: key);

  @override
  _LanguageDialogState createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<LanguageDialog> {
  late String _value;
  late AppCubit _appCubit;

  @override
  void initState() {
    _appCubit = BlocProvider.of<AppCubit>(context);
    _value = _appCubit.state.model?.locale?.split('_').first ?? 'en';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = AppLocalizations.of(context);
    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: widget.keepVisible != false ? Colors.transparent : null,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(24),
              padding: const EdgeInsets.all(24),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xfff8f8f8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        locale?.text(UI.text_change_language) ?? '',
                        style: TextStyle(
                          fontSize: 16,
                          color: theme.accentColor,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      Container(
                        height: 44,
                        width: 200.0.w,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _value = 'en';
                              _appCubit.onChanged(
                                  model: _appCubit.state.model?.copyWith(
                                      locale: 'en_US', pushNotification: null));
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: _value == 'en'
                                ? theme.buttonColor.withOpacity(0.12)
                                : Colors.transparent,
                          ),
                          child: Text(
                            'English',
                            style: TextStyle(
                              color: _value == 'en'
                                  ? theme.buttonColor
                                  : theme.accentColor,
                              fontWeight: _value == 'en'
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 200.0.w,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _value = 'vi';
                              _appCubit.onChanged(
                                  model: _appCubit.state.model
                                      ?.copyWith(locale: 'vi_VN'));
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: _value == 'vi'
                                ? theme.buttonColor.withOpacity(0.12)
                                : Colors.transparent,
                          ),
                          child: Text(
                            'Tiếng Việt',
                            style: TextStyle(
                              color: _value == 'vi'
                                  ? theme.buttonColor
                                  : theme.accentColor,
                              fontWeight: _value == 'vi'
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  AppButton(
                    title: locale?.text(UI.text_continue),
                    onPressed: () {
                      widget.onBack?.call();
                      pop();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
