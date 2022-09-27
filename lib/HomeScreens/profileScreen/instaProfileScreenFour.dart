import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreens/profileScreen/profileHeaderWidget.dart';

class InstaprofileScreenFour extends StatefulWidget {
  const InstaprofileScreenFour({Key? key}) : super(key: key);

  @override
  State<InstaprofileScreenFour> createState() => _InstaprofileScreenFourState();
}

class _InstaprofileScreenFourState extends State<InstaprofileScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context,_) {
            return [
              SliverList(delegate: SliverChildListDelegate([profileHeaderWidget(context)]))
            ];
          }, body: Column(
          children: [
            Material(
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.view_module_outlined,color: Colors.black,size: 20,),
                  ),
                  Tab(
                    icon: Icon(Icons.person_pin_outlined,color: Colors.black,size: 20),
                  )
                ],
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}
