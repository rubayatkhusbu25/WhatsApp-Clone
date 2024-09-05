import 'package:flutter/material.dart';

class ChatBottomBarWidget extends StatelessWidget {
  const ChatBottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: Row(
        children: [
          Container(

            margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 3),
            padding: EdgeInsets.symmetric(horizontal: 15 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Icon(Icons.emoji_emotions_outlined,size: 30, color: Colors.black54,),
                SizedBox(width: 10,),
                Container(
                  width: 170,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 19,
                    ),
                   decoration: InputDecoration(
                     hintText: "Message",
                     border: InputBorder.none,
                   ),
                  ),
                ),
                Icon(Icons.attachment,color: Colors.black38,),
                SizedBox(width: 15,),
                Icon(Icons.camera_alt,color: Colors.black54, ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 23,
            backgroundColor: Color(0xff00887A),
            child: Icon(Icons.mic,color: Colors.white,),
          )
        ],
      ),


    );
  }
}
