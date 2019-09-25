import 'package:flutter/material.dart';
import 'subpage.dart';

class IrregularBottomAppBarPage extends StatefulWidget {
  IrregularBottomAppBarPage({Key key}) : super(key: key);

  _IrregularBottomAppBarPageState createState() => _IrregularBottomAppBarPageState();
}

class _IrregularBottomAppBarPageState extends State<IrregularBottomAppBarPage> {
  List<Widget> subPage; //创建视图数组
  int index = 0; //数组索引，通过改变索引值改变视图

  @override
  void initState() { 
    super.initState();
    subPage = List();
    subPage..add(SubPage(title: '首页'))..add(SubPage(title: '搜索'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: subPage[index],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context){
                return SubPage(title: '发布');
              }
            )
          );
        },
        tooltip: '发布',
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  index = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}