import 'package:flutter/material.dart';
import 'package:instagram_app/activity_page.dart';
import 'package:instagram_app/archive_page.dart';
import 'package:instagram_app/bottomsheet_arrowdownprof.dart';
import 'package:instagram_app/bottomsheet_profile.dart';
import 'package:instagram_app/camra_page.dart';
import 'package:instagram_app/close_friends_page.dart';
import 'package:instagram_app/discover_page.dart';
import 'package:instagram_app/edit_profile.dart';
import 'package:instagram_app/navogation_bar_whmy/heart_whmy.dart';
import 'package:instagram_app/navogation_bar_whmy/home_whmy.dart';
import 'package:instagram_app/navogation_bar_whmy/search_whmy.dart';
import 'package:instagram_app/qr_page.dart';
import 'package:instagram_app/saved_page.dart';
import 'package:instagram_app/settings_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget _titleCard(String title, Widget icon, Function onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 7,
            ),
            Text(
              title,
              style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 0,
        //centerTitle: true ,
        leading: Padding(
          padding: const EdgeInsets.only(left: 0 , right:  20),
          child: IconButton(icon: Icon(Icons.add), onPressed: (){
            bottomSheet(context: context);
          }),
        ),
        title: Row(
          children: [
            InkWell(
              onTap: (){
                bottomSheetarrow( context: context);
              },
              child: Text(
                "Omar_Elsaid",
                style: TextStyle(color: Colors.black),
              ),
            ),
            InkWell(
              onTap: (){
                bottomSheetarrow( context: context);
              },
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
                size: 18,
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 40,
              padding: EdgeInsets.only(right: 200),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Color.fromRGBO(235, 235, 235, 1)),
              )),
              child: Center(
                child: Text(
                  "Omar_Elsaid",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            _titleCard(
                'Archive',
                ImageIcon(
                  AssetImage('assets/images/archive.png'),
                  size: 30,
                ), () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ArchivePageScreen()));
            }),
            _titleCard(
                'Your Activity',
                ImageIcon(
                  AssetImage('assets/images/activity.png'),
                  size: 30,
                ), () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ActivityPageScreen()));
            }),
            _titleCard(
                'QR Code',
                ImageIcon(
                  AssetImage('assets/images/qr.png'),
                  size: 30,
                ), () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QrPageScreen()));
            }),
            _titleCard(
                'Saved',
                ImageIcon(
                  AssetImage('assets/images/saved.png'),
                  size: 30,
                ), () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SavedPageScreen()));
            }),
            _titleCard(
                'Close Friends',
                ImageIcon(
                  AssetImage('assets/images/close.png'),
                  size: 30,
                ), () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CloseFriendsScreen()));
            }),
            _titleCard(
                'Discover People',
                ImageIcon(
                  AssetImage('assets/images/discover.png'),
                  size: 30,
                ),
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscoverPeopleScreen()));
                }),
            SizedBox(height: 260), //in emelator
           // SizedBox(height: 410),
            Container(
              padding: EdgeInsets.only(top: 5),
              height: 40,
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Color.fromRGBO(235, 235, 235, 1)),
              )),
              child: Center(
                  child: _titleCard(
                      'Settings',
                      ImageIcon(
                        AssetImage('assets/images/settings.png'),
                        size: 30,
                      ),
                      () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>SettingsPageScreen()));
                      },)),
            ),
          ],
        ),
      ),
       body: Column(
        children: [
          Row(children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://image.freepik.com/free-photo/mand-holding-cup_1258-340.jpg'),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 75, top: 60),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(57, 151, 240, 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 1.5)
                      ]),
                  child: Center(
                      child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  )),
                )
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                Text(
                  '0',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'posts',
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                )
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                Text(
                  '5',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Followers',
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                )
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                Text(
                  '354',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Following',
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                )
              ],
            )
          ]),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Omar',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  'ElZamalek , Realmadrid',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()));
            },
            child: Container(
              width: 320,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)]),
              child: Center(
                  child: Text(
                'Edit Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
     /* bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black54,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/heart.png'),
                size: 20,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: ImageIcon(
                NetworkImage(
                    'https://image.freepik.com/free-photo/mand-holding-cup_1258-340.jpg'),
                size: 22,
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
        ],
      ),*/
    );
  }
}
