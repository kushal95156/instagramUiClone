import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreens/profileScreen/profileHeaderWidget.dart';

class ProfileScreenThree extends StatefulWidget {
  const ProfileScreenThree({Key? key}) : super(key: key);

  @override
  State<ProfileScreenThree> createState() => _ProfileScreenThreeState();
}

class _ProfileScreenThreeState extends State<ProfileScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: AppBar(
          title: Text('kushal_korapati'),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                  size: 20,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 20,
                )),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 3,
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
                child: TabBar(
                  indicatorColor: Colors.blue,
                  unselectedLabelColor: Colors.grey[400],
                  indicatorWeight: 1,
                  tabs: [
                    Tab(
                      icon:
                          Icon(Icons.view_module_outlined, color: Colors.black,size: 30),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_outlined),
                    )
                  ],
                ),
              ),
              Expanded(child: TabBarView(
                children: [

                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
