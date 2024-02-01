import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.color});
final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        //height: 120,
        //width: 320,
        padding:const  EdgeInsets.only(top: 20, bottom: 20, left: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 16),
                child: Text('Bulid Career with Eslam Ayman',
                    style: TextStyle(
                    
                        color: Colors.black.withOpacity(0.4), fontSize: 15)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon:const Icon(
                  FontAwesomeIcons.trash,
                  size: 22,
                ),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                'May 21 ,2024',
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
            ),
          ],
        ),
      ),
    );
  }}