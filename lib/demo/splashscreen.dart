import 'package:flutter/material.dart';
import 'layout.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);

  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;
  @override
  void initState() { 
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    /*动画事件监听器，它可以监听到动画的执行状态，我们这里只监听动画是否结束，如果结束则执行页面跳转动作。 */
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        //打开新页面并且移除当前页面
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LayoutPage()),
          (route) => route == null
        );
      }
    });
    //播放动画
    _controller.forward();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //透明度动画组件
    return FadeTransition(
      opacity: _animation, //执行动画
      child: Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569229913977&di=06d6dcb8e96fbd4653e9584f86ae4bcb&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F8cd05663121aea78032c838e3377463916d95be2cc75-j7NXW4_fw658',
        scale: 2.0, //进行缩放
        fit: BoxFit.cover, // 充满父容器
      ),
    );
  }
}