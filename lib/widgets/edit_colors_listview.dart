import 'package:flutter/cupertino.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';
import 'package:notes_app/widgets/color_listview.dart';

class EditColorsListview extends StatefulWidget {
const EditColorsListview({ Key? key, required this.note }) : super(key: key);
final NoteModel note;

  @override
  State<EditColorsListview> createState() => _EditColorsListviewState();
}

class _EditColorsListviewState extends State<EditColorsListview> {
 late int currentIndex;
          

 @override
 void initState() {
    currentIndex=colors.indexOf(Color(widget.note.color));
    super.initState();
  }


  List<Color> colors = const [
     Color(0xffFFCC80),
     Color(0xffff6f59),
      Color(0xff254441),
      Color(0xff43aa8b),
      Color(0xffb2b09b),


 ];
  @override
 
  Widget build(BuildContext context){
    return SizedBox(
        height: 35 * 2,
        child: ListView.builder(

          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;//click اللى عملت عليةindex اخزن فى المتغير 
                 widget.note.color= colors[index].value;//ACCESS COLORوبعد كدا غيرت قيمتة
                setState(() {
                  
                });
                    
                  
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,//check
                ),
              )),
        ));
  }
}