//part of ' add_notes_cubit.dart';




abstract class AddNoteState{}

class AddNoteInitial extends AddNoteState {}
class AddNoteLoading extends AddNoteState {}
class AddNoteSuccess extends AddNoteState {}
class AddNoteFaliure extends AddNoteState {
  final String errMessage;
   AddNoteFaliure({this.errMessage = ""});}