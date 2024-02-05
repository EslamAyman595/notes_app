import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';



//part "add_note_state.dart";
class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitial());

}