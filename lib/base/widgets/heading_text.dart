import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';
class HeadingText extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;

  const HeadingText(
      {super.key,
        required this.text,
        this.align = TextAlign.start,
        this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
        textAlign: align,
        text,
        style: isColor == null
            ? AppStyles.headlineStyle1.copyWith(color: Colors.white)
            : AppStyles.headlineStyle1);
  }
}
