import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test12/src/app4.dart';
import 'package:test12/src/app5.dart';
import 'package:test12/src/app6.dart';
import 'package:test12/src/app7.dart';


class Home extends StatefulWidget{
  createState(){
    return HomeState();
}
}

class HomeState extends State<Home>{
  postdataonapi() async{
    // Response response = await get(http://127.0.0.1:8000/api/show/)
    //     [dio.get('http://127.0.0.1:8000/api/USER/')
    //       print(response.data.toString())
    //       , dio.get('/token')]);
    Response response= await Dio().get('http://127.0.0.1:8000/api/show/?format=json',);
    print(response.data);
  }
  Widget build (context){
    return Container(
      margin: EdgeInsets.all(30),
      child:
      Form(
        child: Column(
          children: [

            SizedBox(height: 70,),
            button1(),
            SizedBox(height: 40,),
            button2(),
            SizedBox(height: 40,),
            button3(),
            SizedBox(height: 40,),
            button4(),
          ],
        ),
      ),
    );
  }

  Widget button1(){
    return ElevatedButton(
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) {
            return App4();
          }),
        );
      },
      child: Text('Sport  ',style: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w500,
      // decoration: TextDecoration.overline
      ),
  ),
      style: ButtonStyle(shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
          ),
      ),
        fixedSize: MaterialStateProperty.all(Size(400,100)),
        backgroundColor: MaterialStateProperty.all(
        // Colors.deepPurpleAccent
          Color.fromRGBO(138, 255, 102, 100)
      ),
      ),
  );
}

  Widget button2(){
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) {
            return App5();
          }),
        );

      },
      child: Text('Cinema',style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w500,
        // decoration: TextDecoration.overline
      ),
      ),
      style: ButtonStyle(shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
        ),
      ),
        fixedSize: MaterialStateProperty.all(Size(400,100)),
        backgroundColor: MaterialStateProperty.all(
          // Colors.deepPurpleAccent
            Color.fromRGBO(255, 211, 77, 100)
        ),
      ),
    );
  }

  Widget button3(){
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) {
            return App6();
          }),
        );

      },
      child: Text('Party',style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w500,
        // decoration: TextDecoration.overline
      ),
      ),
      style: ButtonStyle(shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
        ),
      ),
        fixedSize: MaterialStateProperty.all(Size(400,100)),
        backgroundColor: MaterialStateProperty.all(
          // Colors.deepPurpleAccent
            Color.fromRGBO(255, 122, 77, 100)
        ),
      ),
    );
  }

  Widget button4(){
    return ElevatedButton(
      onPressed: () {
        postdataonapi();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) {
            return App7();
          }),
        );

      },
      child: Text('Other',style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w500,
        // decoration: TextDecoration.overline
      ),
      ),
      style: ButtonStyle(shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
        ),
      ),
        fixedSize: MaterialStateProperty.all(Size(400,100)),
        backgroundColor: MaterialStateProperty.all(
          // Colors.deepPurpleAccent
            Color.fromRGBO(77, 246, 255, 100)
        ),
      ),
    );
  }

}