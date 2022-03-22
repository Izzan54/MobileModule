// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Flutter Post',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void main(List<String> arguments) {
    final channel = IOWebSocketChannel.connect(
        'ws://besquare-demo.herokuapp.com');

    // ignore: non_constant_identifier_names
    void post(){
      channel.stream.listen((get_post) {
      final decodePost = jsonDecode(get_post);
      final post = decodePost['type'];
    });
    channel.sink.add('{"type": "get_posts"}');
  }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: ,
        builder: (context, AsyncSnapshot<String> snapshot){
          return ListView.builder(itemBuilder: (context, index) {
        return  Card(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              // ignore: avoid_unnecessary_containers
              children: [Container(
                child: Text("$post"),
              )],
            ),),
        );
      });
        })
    );
  }
}
