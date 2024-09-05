import 'package:flutter/material.dart';

class CallingWidget extends StatefulWidget {
  const CallingWidget({super.key});

  @override
  State<CallingWidget> createState() => _CallingWidgetState();
}

class _CallingWidgetState extends State<CallingWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 12.0),
        child: Column(
          children: [

            for(int i=1; i<4; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("images/p$i.jpeg",height: 50,width: 50,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dear",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Icon(Icons.call_made,color: Color(0xFF085E57),size: 19,),
                            SizedBox(width: 5,),
                            Text("($i) Today, 1$i:5$i",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.call_sharp, color: Color(0xFF085E57),),
                    ),
                  )

                ],
              ),
            ),

            for(int i=4; i<8; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("images/p$i.jpeg",height: 50,width: 50,fit: BoxFit.cover,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dear",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              Icon(Icons.call_received,color: Colors.red,size: 19,),
                              SizedBox(width: 5,),
                              Text("($i) Today, $i:5$i",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.videocam_sharp, color: Color(0xFF085E57),size: 22,),
                      ),
                    )

                  ],
                ),
              )

          ],
        ),
      ),
    );
  }
}
