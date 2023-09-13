import 'package:crunch_kit/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CrunchText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;
  final TextAlign? align;

  const CrunchText(
    this.text, {
    Key? key,
    this.style,
    this.maxLines,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      maxLines: maxLines ?? 3,
      overflow: TextOverflow.ellipsis,
      textAlign: align,
    );
  }
}

class CrunchTextStyles {
  /// Labels
  static const labelLarge = TextStyle(
    color: CrunchColors.white1,
    fontWeight: FontWeight.w700,
    fontSize: 12,

    /// Height in Flutter works as a mulitplier to the fontSize,
    /// so for height 18, we have 18 / 12 as the height value
    height: 18 / 12,
  );

  static const labelMedium = TextStyle(
    color: CrunchColors.white1,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    height: 16 / 12,
  );

  static const labelSmall = TextStyle(
    color: CrunchColors.white1,
    fontWeight: FontWeight.w700,
    fontSize: 11,
    height: 15 / 11,
  );

  /// Body
  static const bodyLarge = TextStyle(
    color: CrunchColors.white1,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 22 / 16,
  );

  static const bodyMedium = TextStyle(
    color: CrunchColors.white1,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 19 / 14,
  );

  static const bodySmall = TextStyle(
    color: CrunchColors.white1,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 16 / 12,
  );

  /// Title
  static const titleLarge = TextStyle(
    color: CrunchColors.white1,
    fontWeight: FontWeight.w500,
    fontSize: 22,
    height: 31 / 22,
  );

  static const titleMedium = TextStyle(
    color: CrunchColors.white1,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 22 / 16,
  );

  static const titleSmall = TextStyle(
    color: CrunchColors.white1,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 19 / 14,
  );
}
