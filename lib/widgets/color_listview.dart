import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorListview extends StatefulWidget {
  const ColorListview({Key? key,}) : super(key: key);

  @override
  State<ColorListview> createState() => _ColorListviewState();
}


class _ColorListviewState extends State<ColorListview> {
  int currentIndex = 0;//اللى تم اختياراها itemبيعرفنى اية
 List<Color> colors = const [
     Color(0xffFFCC80),
     Color(0xffff6f59),
      Color(0xff254441),
      Color(0xff43aa8b),
      Color(0xffb2b09b),


 ];
  @override
  Widget build(BuildContext context) {
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
                  
                 BlocProvider.of<AddNotesCubit>(context).color=colors[index];//جديدcolorجديد ابعت  index كل مرة بصيف 
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
