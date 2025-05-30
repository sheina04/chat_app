import 'package:flutter/material.dart';
import 'chat_page.dart';
import 'login_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black,
        ),
      ),
      home: LoginPage(),
      routes: {
        '/chat': (context) => ChatPage(username: '',),
      },
    );
  }
}
