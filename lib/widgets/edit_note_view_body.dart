import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfiled.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(text: 'Edit Note View', icon: Icon(Icons.youtube_searched_for),),
        SizedBox(
          height: 15,
        ),
        CustomTextField(
          hintText: 'Title',
        ),
        SizedBox(
          height: 10,
        ),
        CustomTextField(
          hintText: 'Content',
          maxline: 5,
        ),
        // 
        Spacer()
,        CustomButon(
          text: 'Edit',
          onTap: () {},
        )
      ],
    );
  }
}
