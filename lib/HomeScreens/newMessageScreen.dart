import 'package:flutter/material.dart';

class NewMessageScreen extends StatefulWidget {
  const NewMessageScreen({Key? key}) : super(key: key);

  @override
  State<NewMessageScreen> createState() => _NewMessageScreenState();
}

class _NewMessageScreenState extends State<NewMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('New Message',
            style:
                TextStyle(color: Colors.black, fontSize: 25, letterSpacing: 1)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Center(
              child: Text(
            'Chat',
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
          ))
        ],
      ),
    );
  }
}
