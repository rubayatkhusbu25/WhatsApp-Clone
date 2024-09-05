
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SettingsPages extends StatefulWidget {
  const SettingsPages({super.key});

  @override
  State<SettingsPages> createState() => _SettingsPagesState();
}

class _SettingsPagesState extends State<SettingsPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF114C4F),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Settings",style: TextStyle(color: Colors.white,fontSize: 20),),
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,color: Colors.white)
              ,),
            //leadingWidth: 100,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 17),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,

                          backgroundImage:AssetImage("images/ppl.jpeg",) ,

                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Programmer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                              SizedBox(height: 3,),
                              Text("Hey there, I am using whatsapp ",style: TextStyle(fontSize: 13,color: Colors.black54),),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.qr_code,color: Color(0xFF085E57),),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_drop_down_circle_outlined,color: Color(0xFF085E57),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(),
                  SettingsDetails(Icons.key_sharp, "Account", "Privacy, Security, Change number"),
                  SettingsDetails(Icons.message, "Chats", "Theme, wallpapers, chat history"),
                  SettingsDetails(Icons.notifications, "Notifications", "Messages,group & call tones"),
                  SettingsDetails(Icons.circle_outlined, "Storage and Data", "Network usages, auto-download"),
                  SettingsDetails(Icons.help_outline, "Help", "Help center, contact us, privacy policy"),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,top: 14),
                    child: Row(
                      children: [
                        Icon(Icons.people_alt),
                        SizedBox(width: 13,),
                        Text("Invite a Friend",style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,top: 30),
                    child: Row(
                      children: [
                        Icon(Icons.security_update_good_outlined),
                        SizedBox(width: 13,),
                        Text("App Updates",style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0,top: 24),
                        child: Text("Also from Meta ",style: TextStyle(fontWeight: FontWeight.w700),),
                      )),

                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0,top: 30),
                          child: Row(
                            children: [
                              FaIcon(FontAwesomeIcons.instagram),
                              SizedBox(width: 13,),
                              Text("Open Instagram",style: TextStyle(fontSize: 16),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0,top: 30),
                          child: Row(
                            children: [
                              Icon(Icons.facebook_sharp),
                              SizedBox(width: 13,),
                              Text("Open Facebook",style: TextStyle(fontSize: 16),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )




                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}

Widget SettingsDetails(IconData icondata, String text, text1){
  return ListTile(
    leading: Icon(icondata),
    title: Text(text),
    subtitle: Text(text1,style: TextStyle(fontSize: 13),),
  );
}
