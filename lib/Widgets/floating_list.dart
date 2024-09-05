import 'package:flutter/material.dart';

class ListDetails extends StatelessWidget {
  const ListDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF085E57),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select Contact", style: TextStyle(color: Colors.white, fontSize: 19),),
            Text("135 Contacts", style: TextStyle(color: Colors.white, fontSize: 11),),
          ],
        ),
        //leadingWidth: 45,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_outlined, color: Colors.white,),
          ),
        actions: [
          Icon(Icons.search,color: Colors.white,size: 28,),
          SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.more_vert,color: Colors.white,size: 28,),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              for(int i=1;i<4; i++)
                Padding(
                  padding: const EdgeInsets.only(left: 5.0,top: 15),
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.green,
                          child: Icon(Icons.person_add,color: Colors.white,),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("New contacts",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 17),),
                            //Text(" Engineer",style: TextStyle(fontSize: 12),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              SizedBox(height: 9,),
              Text("Contacts on whatsapp",style: TextStyle(color: Colors.black,fontSize: 14),),
              for(int i=1;i<12; i++)
              Padding(
                padding: const EdgeInsets.only(left: 5.0,top: 15),
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage("images/p$i.jpeg"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Programmer",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 17),),
                          Text(" Engineer",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                    )
                  ],
                ),
              )
        
            ],
          ),
        ),
      )
    );
  }
}
