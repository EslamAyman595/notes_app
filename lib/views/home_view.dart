import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constamt.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/widgets/addN_note_bottomsheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled:
                    true, //ينفع يتعمل لة scroll لو طلع ليا فوق شويه فى حاله ظهور الكيبورد مثلا فا bottom sheet كلو يطلع لفوق
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                context: context,
                builder: (context) {
                  return const AddNNoteBottomsheet();
                });
          },
          child: Icon(Icons.add),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          backgroundColor: kprimarycolor,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
