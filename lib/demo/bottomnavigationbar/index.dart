import 'package:flutter/material.dart';
import 'page_home.dart';
import 'page_mine.dart';
import 'page_news.dart';
import 'page_notice.dart';

class BottomNavigationBarPage extends StatefulWidget {
  BottomNavigationBarPage({Key key}) : super(key: key);

  _BottomNavigationBarPageState createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  //不能被定义成final类型，因为后面还有更改这个值
  int _currIndex = 0;
  //定义底部导航
  List<Widget> _list = List();

  //将页面添加到数组
  void initState() {
    _list
      ..add(HomePage())
      ..add(NewsPage())
      ..add(NoticePage())
      ..add(MinePage());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_currIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            _currIndex = index;
          });
        },
        currentIndex: _currIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              '首页',
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.new_releases,
            ),
            title: Text(
              '新闻',
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            title: Text(
              '消息',
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              '我的',
            )
          ),
        ],
      ),
    );
  }
}
