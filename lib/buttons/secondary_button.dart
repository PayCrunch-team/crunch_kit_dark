import 'package:crunch_kit/crunch_kit.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CrunchSecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CrunchSecondaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: CrunchColors.almostWhite,
        fixedSize: Size(100.w - (CrunchDimensions.horizontalPadding * 2), 6.h),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: CrunchDimensions.circleBorderRadius,
        ),
      ),
      onPressed: () {
        onPressed();
      },
      child: CrunchText(
        text,
        style: CrunchTextStyles.secondaryButton,
      ),
    );
  }
}
