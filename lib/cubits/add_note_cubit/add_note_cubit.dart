import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:meta/meta.dart';
import 'package:notes_app/constamt.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';



//part "add_note_state.dart";
class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitial());
  Color color= const  Color(0xffFFCC80);
 addNote(NoteModel note )async{
  note.color=color.value;
  emit(AddNoteLoading());
 try {
  var notesBox =Hive.box<NoteModel>(kNoteBox);
  
  await  notesBox.add(note);
  emit(AddNoteSuccess());
}  catch (e) {
  //emit( AddNoteFaliure( e.toString()));
  emit(AddNoteFaliure(errMessage: e.toString()));
}
 
 }
}