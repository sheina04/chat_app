import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  ChatInput({Key? key}) : super(key: key);

  final TextEditingController chatMessageController = TextEditingController();

  void onSendButtonPressed() {
    print('Chat message: ${chatMessageController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      color: Colors.black87,
      child: Row(
        children: [
          // Multiline TextField
          Expanded(
            child: TextField(
              controller: chatMessageController,
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              minLines: 1,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Type your message",
                hintStyle: TextStyle(color: Colors.blueGrey),
                border: InputBorder.none,
              ),
            ),
          ),
          // Send Button
          IconButton(
            onPressed: onSendButtonPressed,
            icon: Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
