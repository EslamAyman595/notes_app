import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constamt.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes()async{
     emit(NotesLoading());
 try {
  var notesBox =Hive.box<NoteModel>(kNoteBox);
  
  List<NoteModel> notes  =notesBox.values.toList();
  emit(NotesSuccess(notes));
}  catch (e) {
  //emit( AddNoteFaliure( e.toString()));
  emit(NotesFaliure( e.toString()));
}

  }
}
