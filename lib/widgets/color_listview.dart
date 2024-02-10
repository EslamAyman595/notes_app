import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorListview extends StatelessWidget {
const ColorListview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 35*2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder:(context, index) => ColorItem()
      ),
    );
  }
}