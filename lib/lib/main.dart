import 'package:flutter/material.dart';
import 'package:project/RoomScreen.dart';
import 'package:project/joinRoom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RoomScreen());
  }
}
