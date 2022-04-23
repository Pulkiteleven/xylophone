import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: xylo(),
      ),
    ),
  ));
}

class xylo extends StatefulWidget {
  const xylo({Key? key}) : super(key: key);

  @override
  _xyloState createState() => _xyloState();
}

class _xyloState extends State<xylo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        expandedWidget(Colors.red, "1"),
        expandedWidget(Colors.orange, "2"),
        expandedWidget(Colors.yellow, "3"),
        expandedWidget(Colors.green, "4"),
        expandedWidget(Colors.teal, "5"),
        expandedWidget(Colors.blue, "6"),
        expandedWidget(Colors.purple, "7"),


      ],
    );
  }

  void player(String no) {
    Audio.load('assets/note$no.wav')
      ..play()
      ..dispose();
  }

  Expanded expandedWidget(Color c,String no){
    return Expanded(
        child: FlatButton(
            onPressed: () {
              player(no);
            },
            color: c,
            child: Text("")));
  }
}
