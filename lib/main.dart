import 'package:flutter/material.dart';
import 'package:private_chat/screens/welcome_screen.dart';
import 'package:private_chat/screens/login_screen.dart';
import 'package:private_chat/screens/registration_screen.dart';
import 'package:private_chat/screens/chat_screen.dart';

void main() => runApp(PrivateChat());

class PrivateChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //home: WelcomeScreen(), ---cannot use this if you are using initial route.
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context)=> WelcomeScreen(),
        LoginScreen.id : (context)=> LoginScreen(),
        RegistrationScreen.id : (context)=> RegistrationScreen(),
        ChatScreen.id : (context)=> ChatScreen(),
      },
    );
  }
}
