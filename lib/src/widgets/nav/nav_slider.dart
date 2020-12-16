import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';

import '../gradient_container.dart';

class NavSlider extends StatelessWidget {
  static final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();
  final Widget drawer;
  final Widget appBar;
  final Widget body;
  // final

  NavSlider({this.drawer, this.appBar, this.body});

  static toggle() {
    _innerDrawerKey.currentState.toggle();
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: InnerDrawer(
        key: _innerDrawerKey,
        onTapClose: true,
        swipe: true,
        colorTransitionChild: Colors.transparent,
        colorTransitionScaffold: Colors.black12,
        // When setting the vertical offset, be sure to use only top or bottom
        offset: IDOffset.only(left: 0.2),
        scale: IDOffset.horizontal(0.9),
        proportionalChildArea: true,
        borderRadius: 50,
        leftAnimationType: InnerDrawerAnimation.static,
        rightAnimationType: InnerDrawerAnimation.quadratic,
        backgroundDecoration: BoxDecoration(
          color: Colors.transparent,
        ),
        leftChild: drawer,
        scaffold: Theme(
          data: ThemeData.light(),
          child: Scaffold(
            appBar: appBar,
            body: body,
          ),
        ),
      ),
    );
  }
}
