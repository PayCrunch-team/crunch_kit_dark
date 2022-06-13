import 'package:crunch_kit/colors.dart';
import 'package:crunch_kit/dimensions.dart';
import 'package:crunch_kit/floating_center_button.dart';
import 'package:crunch_kit/text_styles.dart';
import 'package:flutter/material.dart';

class CrunchScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final bool showOverlay;
  final Widget? overlay;
  final bool disableBack;
  final bool isHomeScaffold;
  final CrunchFloatingCenterButton? floatingCenterButton;

  const CrunchScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.showOverlay = false,
    this.overlay,
    this.disableBack = false,
    this.isHomeScaffold = false,
    this.floatingCenterButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          backgroundColor: CrunchColors.almostWhite,
          floatingActionButton: isHomeScaffold ? floatingCenterButton : null,
          floatingActionButtonLocation:
              isHomeScaffold ? FloatingActionButtonLocation.centerDocked : null,
          appBar: appBar,
          body: Padding(
            padding: CrunchDimensions.horizontalPadding,
            child: body,
          ),
          bottomNavigationBar: bottomNavigationBar,
        ),
        Visibility(
          visible: showOverlay,
          child: overlay ?? Container(),
        ),
      ],
    );
  }
}
