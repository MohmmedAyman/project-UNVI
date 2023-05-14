import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/Home.dart';

class App extends StatelessWidget{
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'log in me',
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          toolbarHeight: 70,
          title: Text('UserName'),
          backgroundColor: Colors.deepPurpleAccent,
          // systemOverlayStyle: SystemUiOverlayStyle(systemNavigationBarColor: Colors.red),
          leading:Container(
            margin: EdgeInsets.all(5),
          child:
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,

        ),
        ),
        ),
        body:  Home(),
            // SafeArea(
            //   child: Row(
            //     // verticalDirection: VerticalDirection.down, for column
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       CircleAvatar(
            //         radius: 30,
            //       ),
            //     ],
            //   ),

              ),

        // backgroundColor: Color.fromRGBO(246, 246, 246, 10)
        // body: ,
      );

  }
}