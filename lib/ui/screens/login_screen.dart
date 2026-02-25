import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 54),
                child: Image.asset('assets/splash_Image.png'),
              ),
              Form(child: CustomTextField()),
              Form(child: CustomTextField()),
              ElevatedButton(
                // style: ButtonStyle(backgroundColor: Facebookcolors.blue),
                onPressed: () {},
                child: Text(
                  'data',
                  style: TextStyle(
                    color: FacebookColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
