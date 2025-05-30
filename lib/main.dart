import 'package:flutter/material.dart';
//import 'chat_page.dart';
import 'chat_page.dart';
//import 'demo/counter_stateful_demo.dart';
import 'login_page.dart';
//import 'login_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginPage(),
      //home: const ChatPage(),
    );
  }
}