import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon'),
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
                  subtitle: Text('图标不是交互式的。对于交互式图标，请考虑MD的 IconButton。'),
                ),
            ),
            Container(
              child: Icon(Icons.notifications,
                color: Colors.orange,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}