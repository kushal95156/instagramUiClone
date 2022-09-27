import 'package:flutter/material.dart';

class FavouriteHomeScreen extends StatefulWidget {
  const FavouriteHomeScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteHomeScreen> createState() => _FavouriteHomeScreenState();
}

class _FavouriteHomeScreenState extends State<FavouriteHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.white,
  automaticallyImplyLeading: false,
  title: Text('Activity',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w500,)),
),
    );
  }
}
