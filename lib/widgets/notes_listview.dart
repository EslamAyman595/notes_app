import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
const NotesListview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      //itemCount: 5,
      itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 8),
          child: NoteItem(),
        );
      },
  
    
    );
  }
}