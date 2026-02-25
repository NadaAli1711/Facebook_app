import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget{
  final String imageName;
  const CustomIcon({super.key, required this.imageName});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Image.asset('assets/images/$imageName.png'),
    );
  }

}