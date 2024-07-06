import 'package:flutter/material.dart';
import 'package:myapp/alam/home_screen.dart';
import 'package:myapp/alam/about_screen.dart';
import 'package:myapp/alam/wisata_screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        '/about': (context) => AboutsScreen(),
        '/home': (context)=> HomesScreen(),
        '/wisata': (context) => ListWisataScreen(),
        
      },
      initialRoute: '/home',
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomesScreen()
    );
  }
}

