import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          CustomAppBar(),
          Expanded(child: NotesListview()),
        ],
      ),
    );
  }
}
