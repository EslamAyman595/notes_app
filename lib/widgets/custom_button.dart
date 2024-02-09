// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:notes_app/constamt.dart';

class CustomButon extends StatelessWidget {
  CustomButon(
      {super.key, this.onTap, required this.text, this.isLoading = false});
  final VoidCallback? onTap;
  final bool isLoading;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kprimarycolor,
          borderRadius: BorderRadius.circular(8),
        ),
        // width: double.infinity,
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Center(
          child: isLoading
              ?const CircularProgressIndicator(
                  color: Colors.black,
                )
              :  Text(
                  text,
                  style:const  TextStyle(
                    color: Colors.black,
                  ),
                ),
        ),
      ),
    );
  }
}
