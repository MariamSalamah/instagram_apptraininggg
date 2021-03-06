import 'package:flutter/material.dart';
import 'package:instagram_app/Settings/Notifications.dart';
class DirectMessagesNotificationPage extends StatefulWidget {
  @override
  _DirectMessagesNotificationPageState createState() => _DirectMessagesNotificationPageState();
}

class _DirectMessagesNotificationPageState extends State<DirectMessagesNotificationPage> {

  int group =1;
  radiochecked(int num){
    setState(() {
      group = num;
    });
  }
  int scgroup =2;
  radiochecked2(int num2){
    setState(() {
      scgroup = num2;
    });
  }
  int trdgroup =3;
  radiochecked3(int num3){
    setState(() {
      trdgroup = num3;
    });
  }

  int forgroup =4;
  radiochecked4(int num4){
    setState(() {
      forgroup = num4;
    });
  }


  Widget _radiobutton({String ftxt , String sctxt , int fvalue , int scvalue ,int grbvalue , Function check}){
    return
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(ftxt , style: TextStyle(fontSize: 15),),
              ),
              Radio(value: fvalue, groupValue: grbvalue, onChanged: check,


              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(sctxt, style: TextStyle(fontSize: 15),),
              ),
              Radio(value: scvalue, groupValue: grbvalue, onChanged: check),
            ],
          ),


        ],
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
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationScreen()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Direct Messages",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 20 , bottom: 10),
            child: Text("Message Requests" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          _radiobutton(ftxt: "Off" , sctxt: "On", fvalue: 0 , scvalue: 1  , grbvalue:  group , check: radiochecked),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 15),
            child: Text("johnappleseed wants to send you a message." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

          Container(
            height: 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.1)))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Messages" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          _radiobutton(ftxt: "Off" , sctxt: "On", fvalue: 0 , scvalue: 2  , grbvalue:  scgroup , check: radiochecked2),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 15),
            child: Text("johnappleseed sent you a message." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

          Container(
            height: 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.1)))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Group Requests" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),
          _radiobutton(ftxt: "Off" , sctxt: "On", fvalue: 0 , scvalue: 3  , grbvalue:  trdgroup , check: radiochecked3),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 15),
            child: Text("johnappleseed wants to add janeappleseed to your group." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

          Container(
            height: 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.1)))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 10),
            child: Text("Video Chats" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
          ),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Off" , style: TextStyle(fontSize: 15),),
                  ),
                  Radio(value: 2, groupValue: forgroup, onChanged: radiochecked4,


                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("From People I Follow", style: TextStyle(fontSize: 15),),
                  ),
                  Radio(value: 0, groupValue: forgroup, onChanged: radiochecked4),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("From Everyone", style: TextStyle(fontSize: 15),),
                  ),
                  Radio(value: 4, groupValue: forgroup, onChanged: radiochecked4),
                ],
              ),


            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 15),
            child: Text("Incoming video chat from johnappleseed." , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

          Container(
            height: 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey.withOpacity(.1)))),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , top: 15 , bottom: 20),
            child: Text("Additional options in system settings..." , style: TextStyle(fontSize: 15 , color: Color.fromRGBO(0, 55, 105, 1)),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15 , right: 20),
            child: Text("These settings affect any Instagram accounts logged into this device" , style: TextStyle(color: Colors.black38 , fontSize: 12),),
          ),

          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,

          ),

        ],
      ),
    );
  }
}
