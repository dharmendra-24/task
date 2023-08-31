import 'package:flutter/material.dart';

class IconTextWithUnderline extends StatelessWidget {
  final Icon icon;
  final Text text;

  IconTextWithUnderline({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        text,
      ],
    );
  }
}
