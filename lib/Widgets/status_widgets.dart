import 'package:flutter/material.dart';

class StatusWidgets extends StatefulWidget {
  const StatusWidgets({super.key});

  @override
  State<StatusWidgets> createState() => _StatusWidgetsState();
}

class _StatusWidgetsState extends State<StatusWidgets> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [

                  // image part (story)
                  Container(
                    padding: EdgeInsets.all(1.8),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey.shade400,width: 3)
                    ),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),

                      child: Image.asset("images/senari.jpg",width: 50,height: 50,),

                    ),
                  ),

                  // text part

                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("My Status",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 3,),
                        Text("Today, 12:30 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black54),),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Icon(Icons.more_vert,color: Color(0xFF085E57),),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text("Recent Updates",
                  style: TextStyle(
                      color: Colors.black.withOpacity(.6),
                      fontSize: 15,
                  fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(height: 12,),

            for(int i=1; i<3; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.9),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.blue,width: 3),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("images/s$i.jpg",width: 50,height: 50,fit: BoxFit.cover,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Alex",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 3,),
                          Text("Today, 2:30 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black54),),
                        ],

                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text("Viewed Updates",
                  style: TextStyle(
                      color: Colors.black.withOpacity(.6),
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),

            for(int i=4; i<6; i++)
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1.8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.grey,width: 3)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset("images/d$i.jpeg",width: 50,height: 50,fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Dear",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                                SizedBox(height: 3,),
                                Text("Yesterday, 4:40 pm",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black54),),
                              ],
                            ),
                          ),
                        )
                      ],
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
