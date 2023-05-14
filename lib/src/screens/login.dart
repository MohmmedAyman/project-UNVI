

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../mixins/validationmixin.dart';
import '../app2.dart';
import '../app3.dart';

class Login extends StatefulWidget{
  createState(){
    return LoginState();
}
}

class LoginState extends State<Login> with ValidationMixin{
  final formkey = GlobalKey<FormState>();
  postdataonapi() async{
    // Response response = await get(http://127.0.0.1:8000/api/show/)
    //     [dio.get('http://127.0.0.1:8000/api/USER/')
    //       print(response.data.toString())
    //       , dio.get('/token')]);
    Response response= await Dio().get('http://127.0.0.1:8000/api/login/',);
    print(response.data);
  }

  String email='';
  String password='';

  Widget build(context){
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Form(
        key: formkey,
        child: Column(
          children: [
            SizedBox(height:200),
            emailfield(),
            SizedBox(height: 20,),
            passwordfield(),
            SizedBox(height: 30,),
            loginButton(),
           registerbutton(),
          ],
        ),
      ),
    );
}

  Widget passwordfield(){
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
            Icons.password,
            color: Colors.deepPurpleAccent,
        ),
        labelText: 'Password',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: Colors.deepPurpleAccent,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: Colors.deepPurpleAccent,
            width: 1.0
          ),
        ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                  color: Colors.deepPurpleAccent,
                  width: 1.0
              )
          )
      ),
      obscureText: true,
      validator: ValidationMixin.validatepassword,
      onSaved: (String? value) {
        password = value!;
      },
    );
  }

  Widget emailfield(){
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          color: Colors.deepPurpleAccent,
        ),
        labelText: 'Email',
        hintText: 'you@example.com',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.deepPurpleAccent,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.deepPurpleAccent,
            width: 1.0,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.deepPurpleAccent,
            width: 1.0,
          ),
        ),
      ),
      keyboardType: TextInputType.emailAddress,

      validator: ValidationMixin.validateEmail,
      onSaved:(String? username) {
        email=username!;
      },
    );
  }

  Widget loginButton(){
    return ElevatedButton(
      child:Text('login',style: TextStyle(
        fontSize: 30,
      ),
      ),

      onPressed: () {



        if(formkey.currentState!.validate()){
            formkey.currentState!.save();
            print('time to post username and password');
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) {
                  return App();
                }));
          }
      },

      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        ),
        fixedSize: MaterialStateProperty.all(Size(150, 50)),
        backgroundColor: MaterialStateProperty.all(
            Colors.deepPurpleAccent
        ),
      ),

    );

  }
  Widget registerbutton(){
    return ElevatedButton(
      onPressed: (){
        postdataonapi() ;
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) {
          return App2();
        }),
      );
    },
        child: Text('Register'),
        style: ButtonStyle(
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                  backgroundColor: MaterialStateProperty.all(
    Colors.deepPurpleAccent
            ),
        ),
    );
  }

}

