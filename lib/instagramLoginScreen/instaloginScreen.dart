import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/HomeScreens/instaHomeMain.dart';

class InstaLoingScreen extends StatefulWidget {
  const InstaLoingScreen({Key? key}) : super(key: key);

  @override
  State<InstaLoingScreen> createState() => _InstaLoingScreenState();
}

class _InstaLoingScreenState extends State<InstaLoingScreen> {
  String email = '';
  String emam = '';
  String pass = 'kushalkumar@gmail.com';
  String nu = '987654321';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                  child: Text(
                'English (United Kingdom)',
                style: TextStyle(
                    color: Colors.white, fontSize: 18, letterSpacing: 1),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Text(
                'Instagram',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(4)),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      hintText: 'phone number,email or username',
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(4)),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                    onChanged: (tnt) {
                      setState(() {
                        emam = tnt;
                      });
                    },
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      hintText: 'Password',
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CupertinoButton(
                  color: Colors.blueAccent,
                  child: Center(
                    child:
                        Text('Log In', style: TextStyle(color: Colors.white)),
                  ),
                  onPressed: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => InstaHomeMain(),));
                    // if(email != pass){
                    //   print ('wrong email');
                    //   var snackBar = SnackBar(content: Text('wrong email'));
                    //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    // }
                    // else if(emam!=nu){
                    //   print('wrong');
                    //   var snackBar = SnackBar(content: Text('wrong password'));
                    //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    // }
                    // else{
                    //   Navigator.push(context, CupertinoPageRoute(builder: (context) => InstaHomeMain(),));
                    // }
                  }),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Text('Forgotten your login screen?',
                      style: TextStyle(color: Colors.white38)),
                ),
                Text(
                  'Get help with logging in.',
                  style: TextStyle(color: Colors.white,letterSpacing: 1),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Divider(
                    indent: 150,
                    height: 40,
                    thickness: 100,
                    color: Colors.white,
                  ),
                  Text(
                    'OR',

                    style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: Text('f',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w900))),
                  ),
                ),
                Text(
                  'Log In With Facebook',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
