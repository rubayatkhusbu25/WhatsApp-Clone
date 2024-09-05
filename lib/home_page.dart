import 'package:flutter/material.dart';
import 'package:whatsup_clone/Widgets/calling_widget.dart';
import 'package:whatsup_clone/Widgets/camera_widget.dart';
import 'package:whatsup_clone/Widgets/chart_widget.dart';
import 'package:whatsup_clone/Widgets/floating_list.dart';
import 'package:whatsup_clone/Widgets/status_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Container(
        color: Color(0xFF114C4F),
        child: SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60), // for customised appbar size
              child: AppBar(
                title: Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Text(
                    "WhatsApp",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                actions: [
                  // for right side icons
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0, right: 15),
                    child: Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),

                  //for more button codes are:
                  PopupMenuButton(
                    onSelected: (selected){
                      if(selected==5){
                        Navigator.pushNamed(context, "settingsPages");
                      }
                    },
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      elevation: 2,
                      iconSize: 28,
                      color: Colors.white,
                      itemBuilder: (context) => [
                            PopupMenuItem(
                                value: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "New Group",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )),
                            PopupMenuItem(
                                value: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12.0,
                                  ),
                                  child: Text(
                                    "New Broadcast",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),),
                            PopupMenuItem(
                                value: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12.0,
                                  ),
                                  child: Text(
                                    "Linked Devices",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )),
                            PopupMenuItem(
                                value: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Starred Messages",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )),
                            PopupMenuItem(
                                value: 5,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Settings",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )),
                          ]),
                ],
              ),
            ),
            body: Column(
              children: [
                Container(
                  color:  Color(0xFF085E57),

                    child:
                        TabBar(
                          tabAlignment: TabAlignment.start,

                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,),
                          indicatorColor: Colors.white,
                          indicatorWeight: 0.4,
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          // indicator: UnderlineTabIndicator(
                          //   borderSide: BorderSide(width: 2.0 ,color: Colors.white), // Custom width and color
                          //   insets: EdgeInsets.symmetric(horizontal: 50.0), // Adjust the indicator size
                          // ),
                          tabs: [
                            //tab1
                            Container(
                              width: 50,
                              child: Tab(
                                icon: Icon(Icons.camera_alt),
                              ),
                            ),


                            //tab2

                              Container(
                                width: 80,
                                child: Tab(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("CHATS"),
                                      SizedBox(width: 2,),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.white,
                                        child: Center(child: Text("11",style: TextStyle(color: Color(0xFF075E55),fontSize: 14,fontWeight: FontWeight.bold),)),
                                      )

                                    ],
                                  ),
                                ),
                              ),


                            //tab2
                            Tab(
                              text: "STATUS",
                            ),

                            Tab(
                              text: "CALLS",
                            ),

                          ],
                        ),


                ),
                Flexible( flex: 1,
                    child: TabBarView(
                      children: [
                        CameraWidget(),
                        ChartWidgets(),
                        StatusWidgets(),
                        CallingWidget(),
                      ],

                ))
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListDetails()),
                  );




              },

              backgroundColor: Color(0xff00887A),
              child: Icon(Icons.message,color: Colors.white,),

            ),



            ),

          ),

        ),
      );

  }
}
