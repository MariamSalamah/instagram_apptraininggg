import 'package:flutter/material.dart';
import 'package:instagram_app/Settings/Account/branded_content_acc.dart';
import 'package:instagram_app/Settings/Account/browser_autofill.dart';
import 'package:instagram_app/Settings/Account/captions_acc.dart';
import 'package:instagram_app/Settings/Account/cellular_data_acc.dart';
import 'package:instagram_app/Settings/Account/contacts_syncing.dart';
import 'package:instagram_app/Settings/Account/language_acc.dart';
import 'package:instagram_app/Settings/Account/linked_accounts.dart';
import 'package:instagram_app/Settings/Account/original_posts_acc.dart';
import 'package:instagram_app/Settings/Account/posts_liked_acc.dart';
import 'package:instagram_app/Settings/Account/request_verification.dart';
import 'package:instagram_app/activity_page.dart';
import 'package:instagram_app/close_friends_page.dart';
import 'package:instagram_app/saved_page.dart';
import 'package:instagram_app/settings_page.dart';
class AccountPageScreen extends StatefulWidget {
  @override
  _AccountPageScreenState createState() => _AccountPageScreenState();
}

class _AccountPageScreenState extends State<AccountPageScreen> {
  Widget _accOption({ String name , Function ontap , dynamic Color}){
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only( bottom: 25 , left: 20),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(name , style: TextStyle( color: Color , fontSize: 15),)),
      ),
    );
  }
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
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => SettingsPageScreen()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Account",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          _accOption(name: 'Your Activity' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ActivityPageScreen()));
          } , Color: Colors.black),
          _accOption(name: 'Saved' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SavedPageScreen()));
          }, Color: Colors.black),
          _accOption(name: 'Close Friends' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CloseFriendsScreen()));
          }, Color: Colors.black),
          _accOption(name: 'Language' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LanguageAccPage()));
          }, Color: Colors.black),
          _accOption(name: 'Captions' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CaptionsAccPage()));
          }, Color: Colors.black),
          _accOption(name: 'Browser Autofill' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BrowserAutofillAccPage()));
          }, Color: Colors.black),
          _accOption(name: 'Contacts Syncing' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactsSyncingAccPage()));
          }, Color: Colors.black),
          _accOption(name: 'Linked Accounts' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LinkedAccountsPage()));
          }, Color: Colors.black),
          _accOption(name: 'Cellular Data Use' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CellularDataUsePage()));
          }, Color: Colors.black),
          _accOption(name: 'Original Posts' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OriginalPostsAccPage()));
          }, Color: Colors.black),
          _accOption(name: 'Request Verification' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RequestVerificationAccPage()));
          }, Color: Colors.black),
          _accOption(name: "Posts You've Liked" , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LikedPostsAccPage()));
          }, Color: Colors.black),
          _accOption(name: 'Branded Content Tools' , ontap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BrandedContentAccPage()));
          }, Color: Colors.black),
          _accOption(name: 'Switch to Professional Account' , ontap: (){}, Color: Colors.blue),

        ],
      ),
    );
  }
}
