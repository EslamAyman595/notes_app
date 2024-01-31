import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children:  [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),

        Spacer(flex: 2,),
        SizedBox(height: 5,),
        CustomSearchIcon()
      ],
      

    );
  }
}
