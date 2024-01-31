import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfiled.dart';

class AddNNoteBottomsheet extends StatelessWidget {
  const AddNNoteBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(height: 10,),
          CustomTextField(
            hintText: 'Content',
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
