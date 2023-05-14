import 'package:flutter/material.dart';
import 'screens/ListOfTickets.dart';
class App7 extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title:'tickets',
        home:Scaffold(
          appBar: AppBar(
            elevation: 10,
            toolbarHeight: 70,
            backgroundColor: Color.fromRGBO(77, 246, 255, 100),
            title: Text('UserName'),
            leading:Container(
              margin: EdgeInsets.all(5),
              child:
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,

              ),
            ),
          ),
          body: Tickets(),
        )
    );
  }
}