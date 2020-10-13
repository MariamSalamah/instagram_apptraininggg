import 'package:flutter/material.dart';
import 'package:instagram_app/camra_page.dart';
import 'package:instagram_app/navogation_bar_whmy/heart_whmy.dart';
import 'package:instagram_app/navogation_bar_whmy/home_whmy.dart';
import 'package:instagram_app/navogation_bar_whmy/search_whmy.dart';
import 'package:instagram_app/profile_page.dart';
class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  /*List _pages = [
    HomePageWhmy(),
    SearchWhmy(),
    CamraPage(),
    HeartWhamy(),
    ProfilePage(),
  ];*/
  Widget _checkIndex(){
    if(_currentIndex ==null){
      return ProfilePage();
    }
    else if(_currentIndex ==0){
      return HomePageWhmy();
    }
    else if (_currentIndex==1){
      return SearchWhmy();
    }
    else if (_currentIndex==2){
      return CamraPage();
      /*InkWell(
        onTap: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CamraPage()));
          });
        },
      );*/

    }
    else if (_currentIndex==2){
      return HeartWhamy();
    }
    else {
      return ProfilePage();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _checkIndex(),
      //_pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
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
      ),
    );
  }
}
