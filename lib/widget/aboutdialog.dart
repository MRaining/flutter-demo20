import 'package:flutter/material.dart';

class AboutDialogPage extends StatelessWidget {
  const AboutDialogPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutDialog'),
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
                  subtitle: Text('关于盒子。这是一个对话框，其中包含应用程序的图标，名称，版本号和版权，以及显示应用程序使用的软件许可证的按钮。'),
                ),
            ),
            Container(
              child: AboutDialog(
              applicationName: '药代通',
              applicationIcon: Icon(Icons.access_alarm),
              applicationLegalese: '药代通版权所有',
              applicationVersion: '1.0.0',
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Text('其他内容'),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}