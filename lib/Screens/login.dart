import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yookatale/Utils/color_theme.dart';
import 'package:yookatale/Utils/login_data.dart';
import 'package:yookatale/components/custom_button.dart';
import 'package:yookatale/components/custom_textinput_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isLoading = false;

  Map<String, String> data ={};

  _LoginScreenState(){
    data =LoginData.signIn;
  }

  void switchLogin(){
    setState(() {
      if(mapEquals(data, LoginData.signUp)){
        data =LoginData.signIn;
      }else{
        data =LoginData.signUp;
      }
    });
  }

void onLoginButton(){

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:40.0, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 8),
                  child: Text(data["heading"] as String, style: Theme.of(context).textTheme.headlineLarge,),),
                  Text(data["subHeading"] as String, style: Theme.of(context).textTheme.bodySmall,),
                ],
              ),
            ),
            model(data, _email, _password),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,
                child: TextButton(onPressed: switchLogin, child: Text(data['footer'] as String, style: Theme.of(context).textTheme.bodyLarge,)),)
              ],
            )
            
          ],
        ),
      ),
    );
  }
  
  model(Map<String, String> data, TextEditingController email, TextEditingController password) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 56),
      decoration: CustomTheme.getCardDecoration(),
      child: Column(
        children: [
          CustomTextInput(label: "Your Email Address", placeHolder: 'email@address.com', icon: Icons.person_outline, textEditingController: _email),
          CustomTextInput(label: "Your Password", placeHolder: 'password', icon: Icons.lock_outline, textEditingController: _password, password: true,),
          CustomButton(onPressed: onLoginButton, text: data['label'] as String, isLoading: _isLoading,)
        ],
      ),
    );
  }
}