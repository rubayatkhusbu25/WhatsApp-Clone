import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 258.0),
                  child: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,size: 80,),
                ),
                
                SizedBox(height: 240,),
                
                Text("from",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 16),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.meta,color: Colors.green,),
                    Text("Meta",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            )),
      ),

          // Splash image

    );
  }
}
