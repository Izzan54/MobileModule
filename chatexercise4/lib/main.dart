import 'dart:convert';
import 'dart:ffi';
import 'package:chatexercise4/Users.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatBar(),
    );
  }
}

class ChatBar extends StatefulWidget {
  const ChatBar({Key? key}) : super(key: key);

  @override
  _ChatBarState createState() => _ChatBarState();
}

class _ChatBarState extends State<ChatBar> {
  List _chat = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/users.json');
    final data = await json.decode(response);
    setState(() {
      _chat = data["chats"];
    });
  }



  @override
  void initState(){
     readJson().then((value) {
      setState(() {
         _chat.addAll(value);
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Chat Messages Status"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerLeft,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  _chat[index].avatarImg,
                            )),
                        Align(
                            child: Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Text(_chat[index].firstName,)
                                Text(_chat[index].lastName),
                                Text(_chat[index].userName,),
                                Text(_chat[index].statusUser,)
                              ],
                            ),
                          ),
                        )),
                        Container(
                            child: Column(
                          children: [
                            Text(_chat[index].seenTime,), 
                            Text(_chat[index].msg,)],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: _chat.length,
        ));
  }
}
