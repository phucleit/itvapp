import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({ Key? key }) : super(key: key);

  static String routeName = '/message';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tin nhắn',
          style: TextStyle(
            color: Color(0xFF8D8D8D),
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(child: Text('Tin nhắn')),
    );
  }
}