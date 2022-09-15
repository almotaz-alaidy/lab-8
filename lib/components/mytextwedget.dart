import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText({this.MyFontFamily, this.MyTextt, this.MyTextSize});
  String? MyTextt;
  double? MyTextSize;
  String? MyFontFamily;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        MyTextt!,
        style: TextStyle(
            fontSize: MyTextSize,
            fontFamily: MyFontFamily,
            fontStyle: FontStyle.italic),
      ),
    );
  }
}
