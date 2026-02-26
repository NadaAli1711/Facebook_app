import 'package:facebook/core/utils/app_styles.dart';
import 'package:facebook/core/utils/app_validators.dart';
import 'package:facebook/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_colors.dart';
import '../widgets/facebook_elevated_button.dart';
import '../widgets/facebook_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'loginScreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 74,left: 20,right: 20,bottom: MediaQuery.of(context).viewInsets.bottom+36),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                spacing: 24,
                children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 38),
                      child: SvgPicture.asset(AppImages.facebookMainLogo),
                    ),
                  FacebookTextFormField(textEditingController: emailController,hintText: 'Mobile Number or Email Address',validator: AppValidators.emailValidator,),
                  FacebookTextFormField(textEditingController: passwordController,hintText: 'Password',isPassword: true,validator: AppValidators.passwordValidator,),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: FacebookElevatedButton(text: 'Login',onPressed: (){
                      if(_formKey.currentState!.validate()) Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);},),
                  ),
                  TextButton(onPressed: (){}, child: Text('Forgotten Password ?',style: AppStyles.forgottenPasswordButtonStyle,)),
                  Padding(
                    padding: const EdgeInsets.only(top: 106),
                    child: FacebookElevatedButton(text: 'Create Account',isLogin: false,),
                  ),
                  SvgPicture.asset(AppImages.facebookMainMetaLogo)
          
                ],
              ),
            ),
          ),
        ),
      ),
    
    );
  }
}
