import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const  CustomAppBar({super.key, required this.text,required this.icon, this.onPressed});
final String text;
final Icon icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children:  [
        Text(
          text,
          style: TextStyle(fontSize: 28),
        ),

        Spacer(flex: 2,),
        SizedBox(height: 5,),
        CustomSearchIcon( 
          
          icon:icon ,
          onPressed:onPressed 
            
          
          )
      ],
      

    );
  }
}
