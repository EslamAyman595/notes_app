import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  
 @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          CustomAppBar(text: 'Notes',icon:  Icon(Icons.search),),
          Expanded(child: NotesListview()),
        ],
      ),
    );
  }
}
