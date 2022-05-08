import 'package:flutter/material.dart';

import 'package:weather_app/screens/homescreen.dart';
import 'package:weather_app/screens/settingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false ,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      initialRoute: '/',
      routes:{
        '/':(_)=> HomeScreen(),
        '/setting' :(_)=>SettingScreen(),
      } ,
    );
  }
}
