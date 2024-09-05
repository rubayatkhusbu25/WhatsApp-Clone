

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsup_clone/Widgets/chat_bottom_bar.dart';
import 'package:whatsup_clone/Widgets/chat_sample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF114C4F),
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBar(
             // backgroundColor: Color(0xFF114C4F),
              leading: Padding(
                padding: const EdgeInsets.only(left: 5,top: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_outlined,color: Colors.white,),
                ),
              ),
              leadingWidth: 17,
              title: Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 2),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("images/p4.jpeg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Programmer",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),),
                          SizedBox(height: 3,),
                          Text("Online",style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 11),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0,),
                  child: Icon(CupertinoIcons.video_camera_solid,color: Colors.white,size: 30,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0, top: 5),
                  child: Icon(Icons.call,color: Colors.white,size: 22,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 11.0, top: 5),
                  child: Icon(Icons.more_vert,color: Colors.white,size: 22,),
                ),
              ],


            ),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg.png",),
                  fit: BoxFit.cover
              )
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                
                child: Column(
                  children: [
                    Container(
                      width: 288,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Color(0xffFFF3c2),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 8
                          )
                        ]
                      ),
                      margin: EdgeInsets.only(bottom: 20, top: 10),
                      padding: EdgeInsets.all(8),
                      child: Text("Messages and calls are end-to-end encrypted, No one outside this chat can read or listen. Tap to learn more",
                      textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    ChatSample(),
                    ChatSample(),
                    ChatSample(),
                    ChatSample(),
                    ChatSample(),
                    ChatSample(),
                    ChatSample(),

                  ],
                ),
              ),
            ),
          ),
          bottomSheet: ChatBottomBarWidget(),

        ),
      ),
    );
  }
}
