import 'package:flutter/material.dart';

class ChartWidgets extends StatefulWidget {
  const ChartWidgets({super.key});

  @override
  State<ChartWidgets> createState() => _ChartWidgetsState();
}

class _ChartWidgetsState extends State<ChartWidgets> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:5, horizontal: 15 ),
        child: Column(
          children: [
            for(int i=1;i<12; i++) // 10 ta akbare holo
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "chatPage");
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical:10 ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(34),
                      child: Image.asset("images/p$i.jpeg",width: 60,height: 60,fit: BoxFit.cover,), // onk gulo image k sm name r number diye akbare niye asa jai
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Programmer",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 5,),
                          Text("Hi, Programmer how are you?",style: TextStyle(color: Colors.black87,fontSize:14 )),
                        ],

                      ),
                    ),
                    Spacer(),
                    Column(

                      children: [
                        Text("12:15",style: TextStyle(color: Colors.green,fontSize: 12,fontWeight: FontWeight.w500),),
                        SizedBox(height: 8,),
                        Container(
                          height: 23,
                            width: 23,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.green
                          ),
                          child: Center(child: Text("$i",style: TextStyle(color: Colors.white,fontSize: 13),)),
                        )
                      ],
                    )
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
