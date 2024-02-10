import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfiled.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);
final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children:[
       const    SizedBox(
            height: 5,
          ),
          CustomAppBar(
            onPressed: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);

            },
            text: 'Edit Note View',
            icon: Icon(Icons.check),
            
          ),
      const    SizedBox(
            height: 15,
          ),
          CustomTextField(
            onChanged: (value) {
             title=value;
            },
            hintText: widget.note.title,
          ),
        const  SizedBox(
            height: 10,
          ),
          CustomTextField(
            onChanged: (value) {
              content=value;
            },
            hintText: widget.note.subtitle,
            maxline: 5,
          ),
        
        ],
      ),
    );
  }
}
