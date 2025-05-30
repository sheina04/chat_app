import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/models/chat_message_entity.dart';

class ChatPage extends StatelessWidget {
  final String username;

  const ChatPage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi $username!'),
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
              itemCount: 10,
              itemBuilder: (context, index) {
                return ChatBubble(
                  alignment: index % 2 == 0
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  entity: ChatMessageEntity(
                    id: index.toString(),
                    text: "Hello, this is $username!",
                    createdAt: DateTime.now().millisecondsSinceEpoch,
                    author: Author(userName: username),
                    imageUrl: null, // or some dynamic image URL if needed
                  ), message: 'Hello this is $username!',
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
