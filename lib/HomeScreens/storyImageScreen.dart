import 'package:flutter/material.dart';

class StoryImageScreen extends StatefulWidget {
  final String img;
  const StoryImageScreen({Key? key, required this.img}) : super(key: key);

  @override
  State<StoryImageScreen> createState() => _StoryImageScreenState();
}

class _StoryImageScreenState extends State<StoryImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('${widget.img}')
          )
        ),
      ),
    );
  }
}
