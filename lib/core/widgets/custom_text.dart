import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDirection,
    this.textDecoration,
    this.fontWeight,
 
    this.letterSpacing,
    this.wordSpacing,
    this.height,
    this.textBaseline,
    this.softWrap,
    this.textHeightBehavior,
  });

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDirection? textDirection;
  final TextDecoration? textDecoration;
  final FontWeight? fontWeight;

  final double? letterSpacing;
  final double? wordSpacing;
  final double? height;
  final TextBaseline? textBaseline;

  final bool? softWrap;
  final TextHeightBehavior? textHeightBehavior;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        height: height,
        textBaseline: textBaseline,
        decoration: textDecoration,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      textDirection: textDirection,
      softWrap: softWrap ?? true,
      textHeightBehavior:
          textHeightBehavior ??
          const TextHeightBehavior(applyHeightToFirstAscent: false),
    );
  }
}
