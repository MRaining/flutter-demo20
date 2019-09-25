import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(20),
              child: 
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  leading: Icon(Icons.notifications, color: Colors.orange,),
                  title: Text('按钮组件'),
                ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text('RaisedButton'),
                    textColor: Colors.white,
                    onPressed: (){},
                    color: Colors.orange,
                    disabledColor: Colors.grey,
                    textTheme: ButtonTextTheme.primary,
                    splashColor: Colors.orangeAccent,
                    colorBrightness: Brightness.dark,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  ),
                  FlatButton(
                    child: Text('FlatButton'),
                    textColor: Colors.white,
                    onPressed: (){},
                    color: Colors.blue,
                    disabledColor: Colors.grey,
                    textTheme: ButtonTextTheme.primary,
                    splashColor: Colors.blueAccent,
                    colorBrightness: Brightness.dark,
                  ),
                  OutlineButton(
                    child: Text('OutlineButton'),
                    textColor: Colors.green,
                    onPressed: (){},
                    color: Colors.green,
                    textTheme: ButtonTextTheme.primary,
                    splashColor: Colors.greenAccent,
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    color: Colors.red,
                    onPressed: (){},
                    iconSize: 24,
                    padding: const EdgeInsets.all(4),
                    alignment: Alignment.center,
                    tooltip: '闹钟',
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}