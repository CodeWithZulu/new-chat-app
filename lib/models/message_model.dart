import 'package:mychatapp/models/user_model.dart';

class Message {
  People sender;
  String time;
  String text;

  Message({
    required this.sender,
    required this.time,
    required this.text,
  });
}

List<Message> messagescreen = [
  Message(sender: currentUser, time: "1:20pm", text: "hey you home?"),
  Message(
      sender: user2,
      time: "1:20pm",
      text: "oga pay back my money na me born you?"),
  Message(sender: user3, time: "8:10pm", text: "hey babe when you coimg over?"),
  Message(sender: user4, time: "4:10pm", text: "im out already"),
  Message(sender: user5, time: "10:50pm", text: "where you dy ogbeni?"),
];
