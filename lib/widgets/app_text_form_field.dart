import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/resource.dart';
import '../widgets/widget.dart';

class AppTextFormField extends StatefulWidget {
  final Widget? icon;
  final String? title;
  final TextEditingController? controller;
  final String? initialValue;
  final String? hintText;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final bool? obscureText;
  final Widget? suffixIcon;
  final int? maxLength;
  final int? maxLines;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldSetter<String>? onSaved;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final bool? readOnly;
  final bool? enableInteractiveSelection;
  final FocusNode? focusNode;
  final Color? fillColor;
  final bool autofocus;

  const AppTextFormField(
      {Key? key,
      this.icon,
      this.title,
      this.controller,
      this.initialValue,
      this.hintText,
      this.style,
      this.hintStyle,
      this.obscureText,
      this.suffixIcon,
      this.maxLength,
      this.maxLines,
      this.keyboardType,
      this.textInputAction,
      this.validator,
      this.onChanged,
      this.onTap,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.onSaved,
      this.inputFormatters,
      this.enabled,
      this.readOnly,
      this.enableInteractiveSelection = true,
      this.focusNode,
      this.fillColor,
      this.autofocus = false})
      : super(key: key);

  @override
  _AppTextFormFieldState createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool _obscure;
  late TextStyle _style;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final theme = Theme.of(context);
    _obscure = widget.obscureText ?? false;
    _style = widget.style ??
        TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          color: widget.enabled == false
              ? theme.hintColor
              : theme.colorScheme.secondary,
        );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return _textFormField();
  }

  Widget _textFormField() {
    final theme = Theme.of(context);

    return TextFormField(
      controller: widget.controller,
      autofocus: widget.autofocus,
      initialValue: widget.initialValue,
      readOnly: widget.readOnly ?? false,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        hintText: widget.hintText,
        label: Text(widget.title??'',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            )),
        hintStyle: widget.hintStyle ??
            TextStyle(
                color: theme.hintColor,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                fontSize: 14),
        // border: OutlineInputBorder(
        //   borderSide: const BorderSide(color: Color(0xFFF0F0F0), width: 1.0),
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
        // filled: true,
        // fillColor: widget.fillColor ?? Colors.red,
        contentPadding:
            const EdgeInsets.symmetric( vertical: 10.0),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(color: Color(0xFFF0F0F0), width: 1.0),
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
        // enabledBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(color: Color(0xFFF0F0F0), width: 1.0),
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
        // errorBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: theme.errorColor, width: 1.0),
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
        // disabledBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(color: Color(0xFFF0F0F0), width: 1.0),
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
        // focusedErrorBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(color: Color(0xFFF0F0F0), width: 1.0),
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
        // contentPadding: EdgeInsets.zero,
        suffixIcon: widget.obscureText == true
            ? Container(
                padding: const EdgeInsets.only(left: 12, right: 16),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  child: AppIcon(
                    Images.icon_text_eye,
                    color: _obscure
                        ? theme.hintColor
                        : theme.colorScheme.secondary,
                  ),
                ),
              )
            : widget.suffixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12.0),
                    child: widget.suffixIcon,
                  )
                : null,
        prefixIcon: widget.icon != null
            ? Container(
                padding: const EdgeInsets.only(right: 16, left: 14),
                child: widget.icon!,
              )
            : null,
        prefixIconConstraints: const BoxConstraints(),
        suffixIconConstraints: const BoxConstraints(),
      ),
      textAlignVertical: TextAlignVertical.center,
      maxLength: widget.maxLength,
      maxLines: widget.obscureText == true ? 1 : widget.maxLines,
      keyboardType: widget.keyboardType,
      obscureText: _obscure,
      cursorColor: Colors.black,
      style: _style,
      validator: widget.validator,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      onSaved: widget.onSaved,
      inputFormatters: widget.inputFormatters,
      enabled: widget.enabled,
      enableInteractiveSelection: widget.enableInteractiveSelection ?? true,
      focusNode: widget.focusNode,
    );
  }
}
