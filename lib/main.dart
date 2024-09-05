import 'package:flutter/material.dart';
import 'package:whatsup_clone/Pages/chat_page.dart';
import 'package:whatsup_clone/Pages/settings_pages.dart';
import 'package:whatsup_clone/Pages/splash.dart';
import 'package:whatsup_clone/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Color(0xFF085E57)
          ),
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.black.withOpacity(0)

          )
        ),
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),

        "settingsPages": (context)=>SettingsPages(),
        "chatPage": (context)=>ChatPage(),
      },

    );



    }
}
