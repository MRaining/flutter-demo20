import 'package:flutter/material.dart';

class SubPage extends StatefulWidget {
  //接收内容
  String title;
  SubPage({Key key, this.title}) : super(key: key);

  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(widget.title),
      )
    );
  }
}