import 'package:flutter/material.dart';

class SuperText extends StatelessWidget {


  final String text;
  final Color color;
  //Style Role Flags
  final bool isHeading;
  final bool isTitle;
  final bool isSmall;
  final bool isCaption;
  final double fontSize;
  final bool allCaps;
  final bool isUnderlined;
  final bool isItalic;
  final FontWeight fontWeight;
  final double letterSpacing;
  final double wordSpacing;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow overflow;
  final double? lineHeight;
  final List<Shadow>? shadows;
  final Gradient? textGradient;
  final bool isSelectable;
  final VoidCallback? onTap;

  

  const SuperText({
    super.key,
    required this.text,
    this.color = Colors.black,
     this.isHeading = false,
    this.isTitle = false,
    this.isSmall = false,
    this.isCaption = false,
    this.fontSize = 24,
    this.allCaps = false,
    this.isUnderlined = false,
    this.isItalic = false,
    this.fontWeight = FontWeight.bold,
    this.letterSpacing = 0.0,
    this.wordSpacing = 0.0,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.lineHeight,
    this.shadows,
    this.textGradient,
    this.isSelectable = false,
    this.onTap,
   
  });
  double _getFontSize() {
    if (isHeading) return 40;
    if (isTitle) return 30;
    if (isSmall) return 12;
    if (isCaption) return 10;
    return 16; // default
  }

FontWeight _getFontWeight() {
  if (isHeading) return FontWeight.bold;
  if (isTitle) return FontWeight.w600;
  if (isSmall) return FontWeight.normal;
  if (isCaption) return FontWeight.w300;
  return fontWeight; // Return the provided fontWeight if none of the above flags are set
}


  @override
  Widget build(BuildContext context) {
    final displayText = allCaps ? text.toUpperCase() : text;

    final textWidget = TextStyle(
      fontSize: _getFontSize(),
      fontWeight: _getFontWeight(),
      color: textGradient == null ? color : null,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      height: lineHeight,
      decoration: isUnderlined ? TextDecoration.underline : TextDecoration.none,
      fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
      shadows: shadows,
    );

    final textContent = TextSpan(
      text: displayText,
      style: textGradient != null
          ? textWidget.copyWith(
              foreground: Paint()
                ..shader = textGradient!.createShader(
                  const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                ),
            )
          : textWidget,
    );

    final widget = isSelectable
        ? SelectableText.rich(
            textContent,
            textAlign: textAlign,
            maxLines: maxLines,
          )
        : RichText(
            text: textContent,
            textAlign: textAlign,
            maxLines: maxLines,
            overflow: overflow,
          );

    return onTap != null
        ? GestureDetector(onTap: onTap, child: widget)
        : widget;
  }
}
