import 'package:flutter/material.dart';
import 'package:instagram_app/Settings/privacy/followinf_tabbars/followers.dart';
import 'package:instagram_app/Settings/privacy/followinf_tabbars/following.dart';
import 'package:instagram_app/Settings/privacy_page.dart';
class AccYouFollowPrivacyPage extends StatefulWidget {
  @override
  _AccYouFollowPrivacyPageState createState() => _AccYouFollowPrivacyPageState();
}

class _AccYouFollowPrivacyPageState extends State<AccYouFollowPrivacyPage> with SingleTickerProviderStateMixin {
  TabController _tabController ;
  @override
  void initState(){
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 252, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 0.8,
        //centerTitle: true ,
        leading: InkWell(
            onTap: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PrivacyPageScreen()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Omar_Elsaid",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),

        bottom: TabBar(
            isScrollable: true,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _tabController,
            unselectedLabelColor: Colors.white54,
            labelStyle: TextStyle(fontSize: 16),
            indicatorColor: (() {
              if (_currentIndex == 0) {
                return Colors.transparent;
              } else {
                return Colors.white;
              }
            }()),
            tabs: [
              Tab(
                text: '4 Followers',
              ),
              Tab(
                text: '375 Following',
              ),
            ]),
      ),
      body: TabBarView(
          controller: _tabController,
          children: [
            FollowersPrivacyTab() , FollowingPrivacyTab()
          ]),
    );
  }
}
