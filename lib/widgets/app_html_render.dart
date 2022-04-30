import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class AppHtmlRender extends StatelessWidget {
  final String content;
  const AppHtmlRender({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Html(
        data: content,
        onMathError: (parsedTex, exception, exceptionWithType) {
          return Text(parsedTex);
        },
        onImageError: (exception, stackTrace) {},
        onLinkTap: (url, context, attributes, element) => launch(url ?? ""));
  }
}
