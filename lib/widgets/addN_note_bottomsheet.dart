import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfiled.dart';

class AddNNoteBottomsheet extends StatefulWidget {
 const   AddNNoteBottomsheet({Key? key}) : super(key: key);

  @override
  State<AddNNoteBottomsheet> createState() => _AddNNoteBottomsheetState();
}

class _AddNNoteBottomsheetState extends State<AddNNoteBottomsheet> {
 //bool isLoading=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNoteState>(
          listener: (context, state) {
            if( state is AddNoteFaliure){
              print('falid ${state.errMessage}');

            }
            if(state is AddNoteSuccess){
              Navigator.pop(context);
            }
            // TODO: implement listener
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: AddNoteForm());
          },
        ),
      ),
    );
  }
}
