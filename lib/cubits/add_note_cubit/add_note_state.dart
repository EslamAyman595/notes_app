//part of ' add_notes_cubit.dart';




abstract class AddNoteState{}

class AddNoteInitial extends AddNoteState {}
class NoteAddedLoading extends AddNoteState {}
class NoteAddedSuccess extends AddNoteState {}
class NoteAddedFaliure extends AddNoteState {
  final String errMessage;
   NoteAddedFaliure({this.errMessage = ""});}