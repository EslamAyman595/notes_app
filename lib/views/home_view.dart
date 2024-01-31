import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: NotesViewBody(),
      // appBar: AppBar(
      //   elevation: 0,
      //   title: Text('notes',style: TextStyle(color: Colors.white),),
      //   backgroundColor: Colors.transparent,
      //   actions: [
      //     IconButton(onPressed: (){}, icon: Icon(Icons.search))
      //   ],
      //   ),
      //   //backgroundColor: Colors.black,
      //   body:
      //    Column(
           
      //     children: [
            

      //     ],
      //   ),

    );
  }
}