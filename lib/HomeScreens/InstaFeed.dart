import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreens/messageScreen.dart';
import 'package:instagramclone/HomeScreens/storyImageScreen.dart';

class InstaFeed extends StatefulWidget {
  const InstaFeed({Key? key}) : super(key: key);

  @override
  State<InstaFeed> createState() => _InstaFeedState();
}

class _InstaFeedState extends State<InstaFeed> {

  List story = [
    {'text': 'yourStory', 'image': 'assets/images/Screenshot_1657195107.png'},
    {'text': 'kushal',
    'image':'assets/images/benten.jpg'
    },
    {'text': 'kumar',
      'image':'assets/images/bene.jpg'
    },
    {'text': 'korapati',
      'image':'assets/images/k.jpg'
    },
    {'text': 'syam',
      'image':'assets/images/nature.jpg'
    },
    {'text': 'syam kumar',
      'image':'assets/images/apple.jpg'
    },
    {'text': 'manoj',
      'image':'assets/images/natureo.jpg'
    },
    {'text': 'swetha',
      'image':'assets/images/xiomi.png'
    },
    {'text': 'sudha',
      'image':'assets/images/nature.jpg'
    },
    {'text': 'dec',
      'image':'assets/images/couple.jpg'
    },
    {'text': 'king',
      'image':'assets/images/earth.jpg'
    },
    {'text': 'amour king',
      'image':'assets/images/couple.jpg'
    },
    {'text': 'paul',
      'image':'assets/images/k.jpg'
    },
    {'text': 'jin',
      'image':'assets/images/couple.jpg'
    },
    {'text': 'lee',
      'image':'assets/images/k.jpg'
    },
    {'text': 'nina',
      'image':'assets/images/apple.jpg'
    },
    {'text': 'panda',
      'image':'assets/images/k.jpg'
    },
    {'text': 'xiomi',
      'image':'assets/images/apple.jpg'
    },
    {'text': 'narito',
      'image':'assets/images/k.jpg'
    },{'text': 'benten',
      'image':'assets/images/earth.jpg'
    },
    {'text': 'heatgost',
      'image':'assets/images/k.jpg'
    },
    {'text': 'smasung',
      'image':'assets/images/earth.jpg'
    },
    {'text': 'apple',
      'image':'assets/images/apple.jpg'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text(
            'Instagram',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          // CupertinoButton(
          //   onPressed: () {},
          //   child: Row(
          //     children: [
          //       Text(
          //         'Instagram',
          //         style: TextStyle(color: Colors.black),
          //       ),
          //     ],
          //   ),
          // ),
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: (){
                      showDialog(context: context, builder: (context){
                        return Container(
                          child: AlertDialog(
                            content: Text('welcoem to videocall screen here you can make video call with your followers insted of using whats app you can make here.'),
                            title: Text('Video call'),
                            actions: [
                              CupertinoButton(child: Text('Back'), onPressed: (){
                                Navigator.pop(context);
                        })
                            ],
                          ),
                        );
                      });
                    },
                    icon: Icon(Icons.add_box_outlined,
                        color: Colors.black, size: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => MessageScreen(),
                          ));
                    },
                    icon: Icon(
                      Icons.maps_ugc_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: story
                      .map((e) => Column(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, CupertinoPageRoute(builder: (context) => StoryImageScreen(img: '${e['image']}'),));
                                },
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('${e['image']}'))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${e['text']}',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              )
                            ],
                          ))
                      .toList(),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
