import 'package:flutter/material.dart';



//This custom text for any text in project
class CustomText extends StatelessWidget {

  String text;
  double fontSize;
  FontWeight weight;
  Color textColor;
  TextAlign textAlign;
  int? maxLines;
  TextOverflow? overflow;

  CustomText({
      Key? key,
      required this.text,
      this.weight = FontWeight.normal,
      this.textColor = Colors.white,
      this.fontSize = 18,
      this.maxLines,
    this.overflow,
      this.textAlign = TextAlign.start})
      : super(key: key);



  //custom text field with poppins text style
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: weight,
        fontSize: fontSize,
      ),
    );
  }
}
