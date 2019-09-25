import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('资讯'),
      ),
      body: Container(
        child: Text('这是资讯'),
      ),
    );
  }
}