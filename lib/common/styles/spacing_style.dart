import 'package:flutter/material.dart';

class FASpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight =
      EdgeInsets.symmetric(vertical: 90.0, horizontal: 20.0);
  static const EdgeInsetsGeometry paddingWithoutAppBarHeight =
      EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0);
  static const EdgeInsetsGeometry containerPadding = EdgeInsets.only(
    top: 25,
    left: 20,
    right: 20,
    bottom: 10,
  );
  static const EdgeInsetsGeometry titlePadding = EdgeInsets.fromLTRB(
    20,
    40,
    0,
    0,
  );
  static const EdgeInsetsGeometry addressPadding = EdgeInsets.fromLTRB(
    6,
    2,
    0,
    0,
  );
}
