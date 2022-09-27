import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreens/profileScreen/gallery.dart';
import 'package:instagramclone/HomeScreens/profileScreen/profileHeaderWidget.dart';
import 'package:instagramclone/HomeScreens/profileScreen/tagPage.dart';

class ProfileScreenTwo extends StatefulWidget {
  const ProfileScreenTwo({Key? key}) : super(key: key);

  @override
  State<ProfileScreenTwo> createState() => _ProfileScreenTwoState();
}

class _ProfileScreenTwoState extends State<ProfileScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
          ),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text('kushal korapati',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                  delegate:
                      SliverChildListDelegate([profileHeaderWidget(context)]))
            ];
          },
          body: Column(
            children: [
              Material(
                color: Colors.white,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey[400],
                  indicatorWeight: 1,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.view_module_outlined,
                          color: Colors.black, size: 30),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_outlined,
                          color: Colors.black, size: 30),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Gallery(),
                  TagPage(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
