import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});



  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: ClipPath(
                    clipper: UpperNipMessageClipperTwo(MessageType.receive),
                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                      child: Text("Hi,Programmer, How are you?"),
                    ),
                  ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5,left: 80,bottom: 15),
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Container(
                    padding: EdgeInsets.only(top: 5,bottom: 8,left: 10,right: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffE4FDCA)
                    ),
                    child: Row(
                      children: [
                        Expanded(child: Container(
                          child: Text("Hi, Developer, I am fine and well. Thanks for asking. What's about you?"),
                        )),
                        SizedBox(width: 3,),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0,top: 60),
                            child: Row(
                              children: [


                                 Padding(
                                   padding: const EdgeInsets.only(right: 8.0),
                                   child: Text("8:09",style: TextStyle(color: Colors.grey.withOpacity(.8)),),
                                 ),
                                //SizedBox(width: 3,),

                                FaIcon(FontAwesomeIcons.check,color: Colors.blue, size: 15,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30,),
      ],
    );

  }
}
