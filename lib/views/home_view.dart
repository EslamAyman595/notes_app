import 'package:flutter/material.dart';
import 'package:notes_app/widgets/addN_note_bottomsheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16);
              ),
              context: context, builder: (context){
              return const  AddNNoteBottomsheet();
            });
          },
          child: Icon(Icons.add),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(38),
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
