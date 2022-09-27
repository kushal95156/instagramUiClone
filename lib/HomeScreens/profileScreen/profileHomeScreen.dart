import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../storyImageScreen.dart';

class ProfileSCreen extends StatefulWidget {
  const ProfileSCreen({Key? key}) : super(key: key);

  @override
  State<ProfileSCreen> createState() => _ProfileSCreenState();
}

class _ProfileSCreenState extends State<ProfileSCreen> {
  List story = [
    {'text': 'yourStory', 'image': 'assets/images/Screenshot_1657195107.png'},
    {'text': 'kushal', 'image': 'assets/images/benten.jpg'},
    {'text': 'kumar', 'image': 'assets/images/bene.jpg'},
    {'text': 'korapati', 'image': 'assets/images/k.jpg'},
    {'text': 'syam', 'image': 'assets/images/nature.jpg'},
    {'text': 'syam kumar', 'image': 'assets/images/apple.jpg'},
    {'text': 'manoj', 'image': 'assets/images/natureo.jpg'},
    {'text': 'swetha', 'image': 'assets/images/xiomi.png'},
    {'text': 'sudha', 'image': 'assets/images/nature.jpg'},
    {'text': 'dec', 'image': 'assets/images/couple.jpg'},
    {'text': 'king', 'image': 'assets/images/earth.jpg'},
    {'text': 'amour king', 'image': 'assets/images/couple.jpg'},
    {'text': 'paul', 'image': 'assets/images/k.jpg'},
    {'text': 'jin', 'image': 'assets/images/couple.jpg'},
    {'text': 'lee', 'image': 'assets/images/k.jpg'},
    {'text': 'nina', 'image': 'assets/images/apple.jpg'},
    {'text': 'panda', 'image': 'assets/images/k.jpg'},
    {'text': 'xiomi', 'image': 'assets/images/apple.jpg'},
    {'text': 'narito', 'image': 'assets/images/k.jpg'},
    {'text': 'benten', 'image': 'assets/images/earth.jpg'},
    {'text': 'heatgost', 'image': 'assets/images/k.jpg'},
    {'text': 'smasung', 'image': 'assets/images/earth.jpg'},
    {'text': 'apple', 'image': 'assets/images/apple.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
          automaticallyImplyLeading: false,
          title: Text('kushal_korapati', style: TextStyle(color: Colors.black)),
          leading: Icon(Icons.lock_outlined, color: Colors.black),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/k.jpg'))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Kushal kumar',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            Text(
                              '6',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text(
                              '412',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25),
                            ),
                            Text(
                              'followers',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text(
                              '400',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30),
                            ),
                            Text(
                              'following',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 320,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text('Edit profile',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(9)),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, right: 7),
                              child: IconButton(
                                icon: Icon(Icons.person_add_outlined,
                                    color: Colors.black, size: 25),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 230, top: 10),
                    child: Text(
                      'Story Highlights',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: story
                          .map((e) => Stack(children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) =>
                                              StoryImageScreen(img: '${e['image']}'),
                                        ));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle, color: Colors.grey),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image:
                                                      AssetImage('${e['image']}'))),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]))
                          .toList(),
                    ),
                  ),
                  TabBar(
                    tabs: [
                      GestureDetector(
                        child: Container(
                          height: 40,
                          width: 200,
                          child: IconButton(
                              focusColor: Colors.blue,
                              icon: Icon(Icons.view_module_outlined,
                                  color: Colors.black, size: 40),
                              onPressed: () {}),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          height: 40,
                          width: 180,
                          child: IconButton(
                              highlightColor: Colors.blue,
                              icon: Icon(Icons.person_pin_outlined,
                                  color: Colors.black, size: 30),
                              onPressed: () {}),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: TabBarView(children: [
                  //  ListView.builder(
                    //   itemCount :story.length,
                    //   itemBuilder: (context, index) {
                    //   return Container(
                    //     width: 80,
                    //     height: 100,
                    //     decoration: BoxDecoration(
                    //       shape: BoxShape.rectangle,
                    //       image: DecorationImage(
                    //         image: AssetImage('${story[index]['text']}')
                    //       )
                    //     ),
                    //   );
                    // } ,),
                      Container(
                        color: Colors.red,
                        height: 1000,
                        width: 390,
                      ),
                      Container(
                        color: Colors.blue,
                        height: 1000,
                        width: 390,
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
