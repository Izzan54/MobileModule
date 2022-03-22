import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

void main(List<String> arguments) {
  final channel = IOWebSocketChannel.connect(
      'wss://ws.binaryws.com/websockets/v3?app_id=1089');

  channel.stream.listen((message) {
    final decodeMessage = jsonDecode(message);
    final serverTimeasEpoch = decodeMessage['time'];
    final serverTime = DateTime.fromMicrosecondsSinceEpoch(serverTimeasEpoch*1000);
    // ignore: avoid_print
    print(serverTime);
    // ignore: avoid_print
    // print(decodeMessage['time']);
  });
  channel.sink.add('{"time":1}');
}
