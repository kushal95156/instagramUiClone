import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreens/InstaFeed.dart';
import 'package:instagramclone/HomeScreens/profileScreen/profileScreenTwo.dart';
import 'package:instagramclone/HomeScreens/reelsScreen/reelsScreen.dart';

import 'SearchScreen/searchSearchHome.dart';
import 'favouritesScreen/FavoriteHomeScreen.dart';

class InstaHomeMain extends StatefulWidget {
  const InstaHomeMain({Key? key}) : super(key: key);

  @override
  State<InstaHomeMain> createState() => _InstaHomeMainState();
}

class _InstaHomeMainState extends State<InstaHomeMain> {
  int index = 0;
  List screens = [
    InstaFeed(),
    HomeSearchScreen(),
    ReelsScreen(),
    FavouriteHomeScreen(),
    ProfileScreenTwo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.black, size: 40),
              label: '',
              activeIcon: Icon(
                Icons.home,
                color: Colors.black,
                size: 40,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded, color: Colors.black, size: 40),
              label: '',
              activeIcon: Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 40,
              )),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_outlined,
                color: Colors.black, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, color: Colors.black, size: 40),
              label: '',
              activeIcon: Icon(
                Icons.favorite,
                size: 40,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: AssetImage('assets/images/k.jpg'))),
                )
              ],
            ),
            // icon: Image.asset('assets/images/k.jpg',fit: BoxFit.cover,height: 30,width:30, ),
            label: '',
          ),
        ],
      ),
    );
  }
}
