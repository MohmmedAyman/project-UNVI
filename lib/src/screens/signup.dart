import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../mixins/validationmixin.dart';

class Signup extends StatefulWidget{
  createState(){
  return SignupState();
}
}
enum gender {male,female}
class SignupState extends State<Signup>with ValidationMixin {


final formkey=GlobalKey<FormState>();


postdataonapi() async{
  // Response response = await get(http://127.0.0.1:8000/api/show/)
  //     [dio.get('http://127.0.0.1:8000/api/USER/')
  //       print(response.data.toString())
  //       , dio.get('/token')]);
  Response response= await Dio().get('http://127.0.0.1:8000/api/USER',);
  print(response.data);
}






TextEditingController _date= TextEditingController();
String name='';
// String gender='';
String email='';
String password='';
DateTime birthdate=DateTime.now();
gender? _gender;
// getdata()
// {
//
// }


  // postdataonapi(name,email,password) async{
  //   Response response = await Future<List<dynamic>> getdata().wait(
  //       [dio.get('http://127.0.0.1:8000/api/USER/')
  //         print(response.data.toString())
  //         , dio.get('/token')]);
  //   // Response response = await Dio().post('http://127.0.0.1:8000/api/USER/',data:{"username":name, "email":email, "password":password},);
  // }

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Form(
        key:formkey,
        child: Column(
          children: [
            SizedBox(height: 100,),
            usernamefield(),
            SizedBox(height: 20,),
            emailfield(),
            SizedBox(height: 20,),
            passwordfield(),
            SizedBox(height: 20,),
            birthdatefield(),
            RadioListTile<gender>(
                value: gender.male,
                groupValue: _gender,
                title:Text('male'),
                onChanged: (val){setState(() {
              _gender = val;
            });}),
            RadioListTile<gender>(
                value: gender.female,
                groupValue: _gender,
                title:Text('female'),
                onChanged:(val){setState(() {
              _gender = val;
            });} ),
            SizedBox(height: 40,),
            registerbutton(),

          ],
        ),
      ),
    );
  }


  //------------------------------------------------------------------------
  // Email Field
  Widget emailfield() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          color: Colors.deepPurpleAccent,
        ),
        labelText: 'Email' ,
        hintText: 'you@example.com',
        labelStyle: TextStyle(
          color: Colors.deepPurpleAccent,
        ),
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
      onSaved: (String? newval){
        email= newval!;
      },

    );
  }

  //------------------------------------------------------------------------
  // Username Field
  Widget usernamefield() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.person,
          color: Colors.deepPurpleAccent,
        ),
        labelText: 'username',
        hintText: 'Jhon',
        labelStyle: TextStyle(
          color: Colors.deepPurpleAccent,
        ),
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
      keyboardType: TextInputType.name,
      validator: ValidationMixin.validateusername,


    );
  }

  //--------------------------------------------------------------------------
  // PasswordField
  Widget passwordfield(){
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(
            Icons.password,
            color: Colors.deepPurpleAccent,
          ),
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.deepPurpleAccent,
          ),
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
    );
  }
  //----------------------------------------------------------------------------
  //---Birthdate Field
  Widget birthdatefield() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.date_range,
          color: Colors.deepPurpleAccent,
        ),
        labelText: 'Select your birthdate',
        labelStyle: TextStyle(
          color: Colors.deepPurpleAccent,
        ),
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
      controller: _date,
      onTap: () async {
        DateTime? pickddate= await showDatePicker(context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1950),
    lastDate: DateTime(3000));
        if(pickddate!= null)
          {
            setState(() {
              _date.text =DateFormat('yyyy/mm/dd').format(pickddate);
            });
          }
    },
      validator: ValidationMixin.validatepassword,
    );

  }
  //----------------------------------------------------------------------------
  //register button
  Widget registerbutton(){
    return ElevatedButton(
        onPressed: (){
          if(formkey.currentState!.validate())
            {
              formkey.currentState!.save();
              // postdataonapi(name, email, password);
              print("Sucssed register");
              postdataonapi();
            }
        },
        child: Text('Register',
        style: TextStyle(
        fontSize: 30,

    ),
    ),

           style:ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        ),
        fixedSize: MaterialStateProperty.all(Size(200, 50)),
        backgroundColor: MaterialStateProperty.all(
            Colors.deepPurpleAccent

      ),
    ),
    );
  }
// Widget ss(){
//     return RadioListTile(value: 'male', groupValue: gender, onChanged: null
//     );
// }

}