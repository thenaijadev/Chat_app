// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({Key? key, this.sender, this.text, this.isMe})
      : super(key: key);

  final String? sender;
  final String? text;
  bool? isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            '$sender',
            style: const TextStyle(color: Colors.black54, fontSize: 12.0),
          ),
          Material(
            borderRadius: BorderRadius.only(
                topRight: isMe! ? Radius.circular(00.0) : Radius.circular(30.0),
                topLeft: isMe! ? Radius.circular(30.0) : Radius.circular(0.0),
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0)),
            elevation: 10.0,
            color: isMe! ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '$text',
                style: TextStyle(
                  color: isMe! ? Colors.white : Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
