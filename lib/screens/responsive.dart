import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 858;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 858 &&
      MediaQuery.of(context).size.width < 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    //if our width is more than 1100 we consider it a desktop
    if (_size.width >= 1100) {
      return desktop;
    } else if (_size.width >= 858 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
