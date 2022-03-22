import 'dart:html';

import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
          size: 20,
          color: Colors.black,
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height-50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 20,),
                  Text("Create an account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700]),)
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label:"Full Name"),
                  inputFile(label:"Email"),
                  inputFile(label:"Password", obscureText: true)
                ],
              )
            ],
          )
        ),),
    );
  }
}
