import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
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
                  subtitle: Text('一个小部件，它将其子项与其自身对齐，并根据子级的大小自行调整大小。'),
                ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
              child: Align(
                alignment: Alignment.center,
                child: Text('我在Align组件内部居中对齐', style: TextStyle(color: Colors.white),),
                // heightFactor: 2.0, //如果为非null，则将其高度设置为子高度乘以此系数。
                // widthFactor: 2.0,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              color: Colors.blue[50],
              child: Align(
                alignment: Alignment(0.2, 0.6), //偏移量详见官方文档
                child: FlutterLogo(
                  size: 60,
                )
              ),
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              color: Colors.orange[50],
              child: Align(
                alignment: FractionalOffset(0.2, 0.6), //偏移量详见官方文档
                child: FlutterLogo(
                  size: 60,
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}