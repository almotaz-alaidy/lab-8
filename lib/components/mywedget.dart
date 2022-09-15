// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer({this.images, required this.OnTap});
  String? images;

  Function() OnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(images!), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
