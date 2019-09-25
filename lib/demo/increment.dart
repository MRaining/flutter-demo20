import 'package:flutter/material.dart';

class IncrementPage extends StatefulWidget {
  IncrementPage({Key key}) : super(key: key);

  _IncrementPageState createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      //更新
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('计数器示例'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '你已经点击按钮的次数是:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              child: Text('按钮'),
              onPressed: _incrementCounter,
            )
          ],
        ),
      ),
    );
  }
}