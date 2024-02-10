import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.color}) : super(key: key);
  final bool isActive; // تم اختيارة ولا لاcolorتعبر عن
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 32, backgroundColor: color),
          )
        : CircleAvatar(
            radius: 35,
            backgroundColor: color,
          );
  }
}
