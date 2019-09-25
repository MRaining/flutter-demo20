import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
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
                  subtitle: Text('警报对话框会通知用户需要确认的情况。警报对话框具有可选标题和可选的操作列表。标题显示在内容上方，操作显示在内容下方。'),
                ),
            ),
            Container(
              child: AlertDialog(
                title: Text('对话框的标题'),
                titlePadding: EdgeInsets.all(30),
                titleTextStyle: TextStyle(color: Colors.orange, fontSize: 20),
                backgroundColor: Colors.white,
                content: Text('点击下面的确定按钮能返回上一页'),
                contentPadding: EdgeInsets.only(left: 30, right: 30),
                contentTextStyle: TextStyle(color: Colors.grey),
                elevation: 8.0,
                semanticLabel: '可访问语义标签',
                // shape: ShapeBorder(),
                actions: <Widget>[
                  FlatButton(
                    child: Text('确定'),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}