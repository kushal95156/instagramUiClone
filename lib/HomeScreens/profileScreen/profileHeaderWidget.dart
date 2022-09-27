import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../storyImageScreen.dart';

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

Widget profileHeaderWidget(BuildContext context) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xff74EDED),
                backgroundImage: NetworkImage(
                    'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    children: [
                      Text(
                        '32',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                      Text(
                        'posts',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          letterSpacing: 0.4,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        '490',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          letterSpacing: 0.4,
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        '200',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          letterSpacing: 0.4,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: story
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: story
                            .map((e) => Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            CupertinoPageRoute(
                                              builder: (context) =>
                                                  StoryImageScreen(
                                                      img: '${e['image']}'),
                                            ));
                                      },
                                      child: Container(
                                        height: 55,
                                        width: 55,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage('${e['image']}'))),
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
                )
                .toList(),
          ),
        )
      ],
    ),
  );
}
