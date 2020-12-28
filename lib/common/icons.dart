import 'package:flutter/material.dart';

class BottomIcons extends StatelessWidget {

  final iconType;
  final Color iconColor;
  BottomIcons({this.iconType, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Icon(
      iconType,
      color: iconColor,
    );
  }
}
