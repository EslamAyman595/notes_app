import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
const ColorItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.red,
    );
  }
}