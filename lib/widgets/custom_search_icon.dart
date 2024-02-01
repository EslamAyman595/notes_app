import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
   CustomSearchIcon({Key? key,this.icon}) : super(key: key);
 Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(onPressed: () {}, icon: icon!,iconSize: 28,),
    );
  }
}
