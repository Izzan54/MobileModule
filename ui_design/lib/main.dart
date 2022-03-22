//import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      resizeToAvoidBottomInset: false,
      // ignore: unnecessary_new
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          centerTitle: true,
          title: const Text("Create The Post"),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image1.jpg"), fit: BoxFit.fill)),
          ),
        ),
      ),
      body: SafeArea(child: Column(
        children:  [
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             // ignore: avoid_unnecessary_containers
             Container(
               //margin: const EdgeInsets.only(left: 50),
               child: const Padding(
              padding: EdgeInsets.only(top: 30,bottom: 10,left: 20),
              child: Text("Tittle",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),),
            Container(
              margin: const EdgeInsets.only(left: 50),
              height: 50.0,
              width: 300.0,
            color: Colors.transparent,
            child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            )]
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             // ignore: avoid_unnecessary_containers
             Container(
               //margin: const EdgeInsets.only(left: 50),
               child: const Padding(
              padding: EdgeInsets.only(top: 30,bottom: 10,left: 30),
              child: Text("Description",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),),
            Container(
              margin: const EdgeInsets.only(left: 50),
              height: 150.0,
              width: 300.0,
            color: Colors.transparent,
            child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            )]
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             // ignore: avoid_unnecessary_containers
             Container(
               //margin: const EdgeInsets.only(left: 50),
               child: const Padding(
              padding: EdgeInsets.only(top: 30,bottom: 10,left: 30),
              child: Text("Image URL",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),),
            Container(
              margin: const EdgeInsets.only(left: 50),
              height: 50.0,
              width: 300.0,
            color: Colors.transparent,
            child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            )]
          )
        ],

      )
      ));
  }
}
