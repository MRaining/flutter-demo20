import 'package:flutter/material.dart';
import 'custom-router.dart';

class PageRouterAnimation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('路由动画'),
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            size: 64.0,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.of(context).push(CustomRoute(NextPage()));
          },
        ),
      )
    );
  }
}
class NextPage extends StatelessWidget {
  const NextPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('第二页'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),
    );
  }
}