import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({Key? key}) : super(key: key);
 final List<Color> data=const [
 Color(0xffFFCC80),
  Colors.red,
  Colors.green,
  Colors.blueAccent,
 ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      
    padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
       // itemCount: data.length,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 3),
            child: NoteItem(color:Color(0xffFFCC80), ),
          );
        },
      ),
    );
  }
}
