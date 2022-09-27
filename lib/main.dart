import 'package:flutter/material.dart';
import 'package:instagramclone/instagramLoginScreen/instaloginScreen.dart';

void main(){
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstaLoingScreen(),
    );
  }
}
