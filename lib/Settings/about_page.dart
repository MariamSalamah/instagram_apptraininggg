import 'package:flutter/material.dart';
import 'package:instagram_app/settings_page.dart';
class AboutPageScreen extends StatefulWidget {
  @override
  _AboutPageScreenState createState() => _AboutPageScreenState();
}

class _AboutPageScreenState extends State<AboutPageScreen> {
  Widget _aboutOption({ String name , Function ontap}){
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only( bottom: 25 , left: 20),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(name , style: TextStyle( color: Colors.black , fontSize: 15),)),
      ),
    );}
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
          "About",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          _aboutOption(name: 'App Updates' , ontap: (){}),
          _aboutOption(name: 'Data Policy' , ontap: (){}),
          _aboutOption(name: 'Terms of Use' , ontap: (){}),
          _aboutOption(name: 'Open Source Libraries' , ontap: (){}),

        ],
      ),
    );
  }
}
