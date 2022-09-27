import 'package:flutter/material.dart';

class HomeSearchScreen extends StatefulWidget {
  const HomeSearchScreen({Key? key}) : super(key: key);

  @override
  State<HomeSearchScreen> createState() => _HomeSearchScreenState();
}

class _HomeSearchScreenState extends State<HomeSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.pin_drop_outlined,
                color: Colors.black,
              ))
        ],
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle),
          width: 300,
          height: 35,
          child: TextField(
            decoration: InputDecoration(
                hintText: 'search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
          ),
        ),
      ),
    );
  }
}
