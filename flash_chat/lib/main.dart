import 'package:flashchat/screens/chat_screen.dart';
import 'package:flashchat/screens/signin_screen.dart';
import 'package:flashchat/screens/signup_screen.dart';
import 'package:flashchat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        WelcomeScreen.route: (context) => WelcomeScreen(),
        ChatScreen.route: (context) => ChatScreen(),
        SignInScreen.route: (context) => SignInScreen(),
        SignUpScreen.route: (context) => SignUpScreen(),
      },
      initialRoute: WelcomeScreen.route,
      /*
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
       */
    );
  }
}
