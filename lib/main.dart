import 'package:flutter/material.dart';
import 'package:whatsapp/CallsWidget.dart';
import 'package:whatsapp/ChatBottomBar.dart';
import 'package:whatsapp/ChatSample.dart';
import 'package:whatsapp/ChatsWidget.dart';
import 'package:whatsapp/HomePage1.dart';
import 'package:whatsapp/SplashScreen.dart';
import 'package:whatsapp/StatusWidget.dart';
import 'package:whatsapp/chatPage.dart';
import 'package:whatsapp/settingsPage.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.purple,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
      "/" : (context) => const SplashScreen(),
      "HomePage1" : (context) => const HomePage1(),
      "settingsPage" : (context) => const settingsPage(),
      "chatPage" : (context) => const chatPage(),
      "CallsWidget" : (context) => const CallsWidget(),
      "ChatBottomBar" : (context) => const ChatBottomBar(),
      "ChatSample" : (context) => const ChatSample(),
      "ChatsWidget" : (context) => const ChatsWidget(),
      "StatusWidget" : (context) => const StatusWidget(),
      },
    );
  }
}
