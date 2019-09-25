import 'package:flutter/material.dart';

class AboutListTitlePage extends StatelessWidget {
  const AboutListTitlePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutListTitle'),
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
                  subtitle: Text('此小部件通常会添加到应用程序的抽屉中。点击它时会显示一个带有showAboutDialog的关于框的对话框。'),
                ),
            ),
            Container(
              child: AboutListTile(
              aboutBoxChildren: <Widget>[
                Text('其他内容')
              ],
              applicationIcon: Icon(Icons.access_alarm),
              applicationLegalese: '药代通版权所有',
              applicationVersion: '1.0.0',
              applicationName: '药代通',
              child: Text('关于药代通'),
              icon: Icon(Icons.access_alarm),
            ),
            )
          ],
        ),
      ),
    );
  }
}