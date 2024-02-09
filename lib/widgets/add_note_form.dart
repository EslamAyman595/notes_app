import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfiled.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey <FormState>formkey =GlobalKey();
  AutovalidateMode mode = AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: mode,
      child: Column(
        
        children: [
       const   SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (value) {
              title= value;
              
            },
            hintText: 'Title',
          ),
        const  SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle=value;
            },
            hintText: 'Content',
            maxline: 5,
          ),
       const   SizedBox(
            height: 40,
          ),
          CustomButon(
            text: 'Add',
            onTap: () {
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
                var  noteModel=NoteModel(
                  date: DateTime.now().toString(),
                   color: Colors.blueAccent.value,
                    title: title!, 
                    subtitle: subtitle!);
                BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
              }else{
                mode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
            )
        ],
      ),
    );
  }
}
