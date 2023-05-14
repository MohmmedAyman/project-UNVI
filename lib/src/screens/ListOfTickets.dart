import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class Tickets extends StatefulWidget{
  createState() {
    return TicketsState();
  }
  }



class TicketsState extends State<Tickets>{


  postdataonapi() async{
    // Response response = await get(http://127.0.0.1:8000/api/show/)
    //     [dio.get('http://127.0.0.1:8000/api/USER/')
    //       print(response.data.toString())
    //       , dio.get('/token')]);
    Response response= await Dio().get('http://127.0.0.1:8000/api/show/?format=json',);
    print(response.data);
  }





  List<String> tickets =["الزمالك و الاهل","المحلة و طلائع الجيش","بنك الاهلي و سموحه"];
  List<String> ticketdetail=['1/1/2022','1/1/2022','1/1/2022'];
  List<int>price=[100,200,300];
  Widget build(context){
  return Container(
    child: ListView.builder(
        itemCount:tickets.length ,
        itemBuilder: (context,index){
          // return ListTile(
          //   leading: CircleAvatar(child: Text(tickets[index][0]),),
          //   title: Text(tickets[index]),
          //   subtitle: Text(ticketdetail[index]),
          //   trailing: Text(price[index].toString()),
          // );
          return Card(child:Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(child: Text(tickets[index][0]),backgroundColor: Color.fromRGBO(138, 255, 102, 100),),
                title: Text(tickets[index],),
                subtitle: Text(ticketdetail[index],),
                trailing: Text(price[index].toString(),),

              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.end ,
                children: <Widget>[
                  TextButton(
                    child:Text('buy ticket',style: TextStyle(color: Colors.deepPurpleAccent),),
                    onPressed: (){},
                  ),
                  SizedBox(width: 8,),
                  TextButton(
                    child: Text("show",style: TextStyle(color: Colors.deepPurpleAccent),),
                    onPressed:(){
                      //api
                      postdataonapi();
                    }
                  ),
                  SizedBox(width: 8,),
                ],
              )
            ],
          ),

          );
        }),

  );
  }
}