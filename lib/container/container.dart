import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key key}) : super(key: key);

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
                  subtitle: Text('Container是一个容器类widget，它本身不对应具体的RenderObject，它是DecoratedBox、ConstrainedBox、Transform、Padding、Align等widget的一个组合widget。'),
                ),
            ),
            Container(
              alignment: Alignment.center, //对齐
              decoration: BoxDecoration(color: Colors.cyan), //背景装饰
              // foregroundDecoration: BoxDecoration(color: Colors.black), //前景装饰
              // color: Colors.blue, //背景色，注意和decoration冲突
              // constraints: BoxConstraints.expand(width: 100, height: 100),
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10),
              transform: Matrix4.rotationX(0),
              child: Text('这是一个Container', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}