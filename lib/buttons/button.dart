import 'package:crunch_kit/crunch_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CrunchButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final ButtonType? type;
  final ButtonSize? size;

  const CrunchButton({
    super.key,
    required this.onPressed,
    required this.text,
    // if button type not specified then default is primary
    this.type = ButtonType.primary,
    // if button size not specified then default is large
    this.size = ButtonSize.large,
  });

  @override
  Widget build(BuildContext context) {
    double height = 160;

    if (size == ButtonSize.small) {
      height = 107;
    } else {
      height = 160;
    }

    Color textColor;
    Decoration buttonDecoration;

    switch (type) {
      case ButtonType.primary:
        textColor = CrunchColors.white1;
        buttonDecoration = ShapeDecoration(
          color: CrunchColors.primary1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        );
        break;

      case ButtonType.secondary:
        textColor = CrunchColors.black3;
        buttonDecoration = ShapeDecoration(
          color: CrunchColors.white1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        );
        break;

      case ButtonType.inactive:
        textColor = CrunchColors.white6;
        buttonDecoration = ShapeDecoration(
          color: CrunchColors.black3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        );
        break;

      case ButtonType.outline:
        textColor = CrunchColors.white2;
        buttonDecoration = ShapeDecoration(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: const BorderSide(width: 0.8, color: CrunchColors.white3),
          ),
        );
        break;

      case ButtonType.outlineInactive:
        textColor = CrunchColors.white6;
        buttonDecoration = ShapeDecoration(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: const BorderSide(width: 0.8, color: CrunchColors.white8),
          ),
        );
        break;

      default:
        textColor = CrunchColors.white1;
        buttonDecoration = ShapeDecoration(
          color: CrunchColors.primary1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        );
    }

    return GestureDetector(
      onTap: () async {
        await HapticFeedback.mediumImpact();
        FocusManager.instance.primaryFocus?.unfocus();
        onPressed();
      },
      child: Container(
        height: height,
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        clipBehavior: Clip.antiAlias,
        decoration: buttonDecoration,
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: CrunchTextStyles.titleMedium,
        ),
      ),
    );
  }
}

enum ButtonType {
  primary,
  secondary,
  inactive,
  outline,
  outlineInactive;
}

enum ButtonSize {
  large,
  medium,
  small;
}
