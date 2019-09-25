import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
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
                  subtitle: Text('Container'),
                ),
            ),
            Container(
              
            )
          ],
        ),
      ),
    );
  }
}