import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通知'),
      ),
      body: Container(
        child: Text('这是通知'),
      ),
    );
  }
}