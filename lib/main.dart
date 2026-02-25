import 'package:facebook/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(
      Facebook()
  );
}
class Facebook extends StatelessWidget {
  const Facebook({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomeScreen(),
);
  }
}
