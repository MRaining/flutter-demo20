import 'package:flutter/material.dart';

class ClipPathPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路径裁切'),
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: SecondClipper(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200,
            ),
          ),
        ],
      )
    );
  }
}
class FirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0); //第一个点的位置
    path.lineTo(0, size.height - 50); //第二个点点位置
    //控制点的位置，即，中间凸起的位置
    var controlPoint = Offset(size.width/2, size.height);
    //曲线结束点的位置
    var endPoint = Offset(size.width, size.height - 50);
    //绘制贝塞尔曲线，需传入控制点的位置和结束点的位置
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    //第三个点的位置，同曲线结束点
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0); //第四个点的位置
    return path;
  }
  //还需要重写的一个方法，固定写法，返回false
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
class SecondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0); //第一个点的位置
    path.lineTo(0, size.height - 40); //第二个点点位置
    //第一个控制点的位置，
    var firstControlPoint = Offset(size.width/4, size.height);
    //第一个曲线结束点的位置
    var firstEndPoint = Offset(size.width/2, size.height - 40);
    //绘制贝塞尔曲线，需传入控制点的位置和结束点的位置
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    //第二个控制点的位置
    var secondControlPoint = Offset(size.width/4*3, size.height - 80);
    //第二个结束点的位置
    var secondEndPoint = Offset(size.width, size.height - 40);
    //绘制贝塞尔曲线，需传入控制点的位置和结束点的位置
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    //第三个点的位置
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0); //第四个点的位置

    return path;
  }
  //还需要重写的一个方法，固定写法，返回false
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}