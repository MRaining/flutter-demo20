import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                contentPadding: EdgeInsets.all(15),
                leading: Icon(
                  Icons.notifications,
                  color: Colors.orange,
                ),
                title: Text('文本输入组件'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '下面是文本框内容',
                    style: TextStyle(
                        fontSize: 16, height: 1.5, color: Colors.blue),
                    textAlign: TextAlign.left,
                  ),
                  TextField()
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    icon: Icon(Icons.text_fields),
                    labelText: '请输入你的手机号',
                    helperText: '共11位'),
                autofocus: false,
                onChanged: (str) {
                  print(str);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
