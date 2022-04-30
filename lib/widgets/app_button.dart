import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget? child;
  final String? title;
  final double height;
  final double borderRadius;
  final Color? color;
  final VoidCallback? onPressed;

  const AppButton({
    Key? key,
    this.child,
    this.title,
    this.height = 46.0,
    this.borderRadius = 8.0,
    this.color,
    this.onPressed,
  })  : assert((child == null && title != null) ||
            (child != null && title == null)),
        assert(borderRadius >= 0 && height > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ElevatedButton(
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
                    fontWeight: FontWeight.w500,
                  ),
                ),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
