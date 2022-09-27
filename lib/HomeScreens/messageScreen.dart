import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreens/newMessageScreen.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List messages = [
    {'text': 'yourStory', 'image': 'assets/images/Screenshot_1657195107.png'},
    {
      'text': 'kushal',
      'image': 'assets/images/benten.jpg',
      'sub': 'sent',
    },
    {
      'text': 'kumar',
      'image': 'assets/images/bene.jpg',
      'sub': 'recived',
    },
    {
      'text': 'korapati',
      'image': 'assets/images/k.jpg',
      'sub': 'send',
    },
    {
      'text': 'syam',
      'image': 'assets/images/nature.jpg',
      'sub': 'failed',
    },
    {
      'text': 'syam kumar',
      'image': 'assets/images/apple.jpg',
      'sub': 'not send',
    },
    {
      'text': 'manoj',
      'image': 'assets/images/natureo.jpg',
      'sub': 'recived',
    },
    {
      'text': 'swetha',
      'image': 'assets/images/xiomi.png',
      'sub': 'sent',
    },
    {
      'text': 'sudha',
      'image': 'assets/images/nature.jpg',
      'sub': 'sent reels',
    },
    {
      'text': 'dec',
      'image': 'assets/images/couple.jpg',
      'sub': 'send',
    },
    {
      'text': 'king',
      'image': 'assets/images/earth.jpg',
      'sub': 'recived',
    },
    {
      'text': 'amour king',
      'image': 'assets/images/couple.jpg',
      'sub': 'send',
    },
    {
      'text': 'paul',
      'image': 'assets/images/k.jpg',
      'sub': 'read',
    },
    {
      'text': 'jin',
      'image': 'assets/images/couple.jpg',
      'sub': 'send',
    },
    {
      'text': 'lee',
      'image': 'assets/images/k.jpg',
      'sub': 'recived',
    },
    {
      'text': 'nina',
      'image': 'assets/images/apple.jpg',
      'sub': 'send',
    },
    {
      'text': 'panda',
      'image': 'assets/images/k.jpg',
      'sub': 'recived',
    },
    {
      'text': 'xiomi',
      'image': 'assets/images/apple.jpg',
      'sub': 'send',
    },
    {
      'text': 'narito',
      'image': 'assets/images/k.jpg',
      'sub': 'sent messages',
    },
    {
      'text': 'benten',
      'image': 'assets/images/earth.jpg',
      'sub': 'sent reels',
    },
    {
      'text': 'heatgost',
      'image': 'assets/images/k.jpg',
      'sub': 'send',
    },
    {
      'text': 'smasung',
      'image': 'assets/images/earth.jpg',
      'sub': 'send',
    },
    {
      'text': 'apple',
      'image': 'assets/images/apple.jpg',
      'sub': 'recived',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_call_outlined,
                    color: Colors.black,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => NewMessageScreen(),
                        ));
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 30,
                  )),
            ],
          )
        ],
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text('Kushal_korapati',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${messages[index]['text']}'),
                  subtitle: Text('${messages[index]['sub']}'),
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                           fit: BoxFit.cover,
                            image: AssetImage('${messages[index]['image']}'))),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt_outlined, color: Colors.black),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
