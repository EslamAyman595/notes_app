import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({Key? key}) : super(key: key);
  // final List<Color> data = const [
  //   Color(0xffFFCC80),
  //   Colors.red,
  //   Colors.green,
  //   Colors.blueAccent,
  // ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            // itemCount: state is NotesSuccess ? state.notes.length :0,
            // itemCount: 10,
            padding: EdgeInsets.zero,

            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(
                  color: Color(0xffFFCC80),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
