import 'package:flutter/material.dart';

class AppOutLineButton extends StatelessWidget {
  final Widget? child;
  final String? title;
  final double height;
  final double borderRadius;
  final VoidCallback? onPressed;
  final Color? color;

  const AppOutLineButton(
      {Key? key,
      this.child,
      this.title,
      this.height = 48.0,
      this.borderRadius = 8.0,
      this.onPressed,
      this.color})
      : assert((child == null && title != null) ||
            (child != null && title == null)),
        assert(borderRadius >= 0 && height > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 88.0,
            minHeight: 36.0,
          ),
          alignment: Alignment.center,
          child: child != null
              ? child
              : Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1D1D1D),
                    fontWeight: FontWeight.w500,
                  ),
                ),
        ),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          side: BorderSide(color: color ?? theme.buttonColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
