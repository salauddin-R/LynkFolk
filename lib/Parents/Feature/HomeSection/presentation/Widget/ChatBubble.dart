import 'package:flutter/material.dart';

import '../../data/MessageData.dart';

class ChatBubble extends StatelessWidget {
  final ChatMessage message;
  ChatBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    bool isChild = message.role == "Child";

    return Row(
      mainAxisAlignment: isChild ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isChild) CircleAvatar(backgroundImage: AssetImage(message.avatarUrl)),
        SizedBox(width: 8),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              color: isChild ? Color(0xFFE8E0FF) : Color(0xFFB3E5FC),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(message.text),
          ),
        ),
        SizedBox(width: 8),
        if (isChild) CircleAvatar(backgroundImage: AssetImage(message.avatarUrl)),
      ],
    );
  }
}