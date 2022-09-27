import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreens/storyImageScreen.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List imageUrls = [
  {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
    {'image':'https://bestgovjobs.com/wp-content/uploads/2022/04/New-Standard-Whatsapp-DP.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,childAspectRatio: 1.0,
      children: imageUrls.map((e) =>GestureDetector(
        onTap: (){
          Navigator.push(context, CupertinoPageRoute(builder: (context) => StoryImageScreen(img: '${e['image']}'),));
        },
        onLongPress: (){
        },
        child: Container(
          height: 60,
          width: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('${e['image']}')
            )
          ),
        ),
      ) ).toList(),
      ),
    );
  }
}
