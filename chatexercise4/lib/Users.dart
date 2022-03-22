import 'dart:convert';

class UserMsg{

  String id;
  String firstName;
  String lastName;
  String avatarImg;
  String userName;
  String seenTime;
  String statusUser;
  String msg;


  UserMsg(this.id, this.firstName, this.lastName, this.avatarImg,this.userName, this.seenTime,this.msg, this.statusUser);

  UserMsg.fromJson(Map<String, dynamic>.json){
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    avatarImg = json['avatarImg'];
    userName = json['userName'];
    seenTime = json['seenTime'];
    statusUser = json['statusUser'];
    msg = json['msg'];


  }


}
