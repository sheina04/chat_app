import 'dart:convert';

import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/chat_message_entity.dart';

class ChatPage extends StatefulWidget {
  final String username;

  const ChatPage({Key? key, required this.username}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatMessageEntity> _messages = [];

  Future<void> _loadInitialMessages() async {
    final response = await rootBundle.loadString('assets/mock_messages.json');
    final List<dynamic> decodeList = jsonDecode(response);

    final chatMessages = decodeList.map((listItem) {
      return ChatMessageEntity.fromJson(listItem);
    }).toList();

    setState(() {
      _messages = chatMessages;
    });

    print('Loaded ${_messages.length} messages');
  }

  @override
  void initState() {
    super.initState();
    _loadInitialMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi ${widget.username}!'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              print('Logout pressed!');
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ChatBubble(
                  alignment: message.author.userName == widget.username
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  entity: message,
                  message: message.text,
                );
              },
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
