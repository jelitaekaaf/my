import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
         color: Color.fromARGB(255, 247, 11, 121),
        image: DecorationImage(
        image: NetworkImage('https://img.freepik.com/free-photo/copy-space-yellow-blue-cupboards_23-2148518390.jpg?size=626&ext=jpg'),
        fit: BoxFit.cover)
      ),
      child: Center(
        child: Text("Hello World",
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30
          ),
        ),
      ),  
      );
  
  }
}