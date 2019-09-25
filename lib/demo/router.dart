import 'package:flutter/cupertino.dart';

class RouterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Router',
      //注册路由表
      routes:{
        'new_page':(context) => NewRoute()
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('内联路由的两种实现方式'),
            //打开一个新页面
            CupertinoButton(
              child: Text('通过调用方法打开新页面'),
              onPressed: (){
                Navigator.push(context, new CupertinoPageRoute(builder:(context){
                    return new NewRoute();
                  })
                );
              }
            ),
            //通过路由名称打开新页面，需要提前注册路由
            CupertinoButton(
              child: Text('通过路由名称打开新页面'),
              onPressed: (){
                Navigator.pushNamed(context, 'new_page');
              },
            )
        ],
      )
    );
  }
}

//创建一个新路由
class NewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: Container(
        child: Text('这是一个新页面'),
      ),
    );
  }
}
