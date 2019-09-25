import 'package:flutter/material.dart';

class ExpansionTilePage extends StatefulWidget {
  ExpansionTilePage({Key key}) : super(key: key);

  _ExpansionTilePageState createState() => _ExpansionTilePageState();
}

class _ExpansionTilePageState extends State<ExpansionTilePage> {
  var currPanelIndex = -1;
  List<int> listIndex; //组成一个int类型数组，用来控制索引
  List<ExpandStateBean> expandStateList; //开展开的状态列表， ExpandStateBean是自定义的类
  //构造方法，调用这个类的时候自动执行
  _ExpansionTilePageState() {
    //初始化变量
    listIndex = new List();
    expandStateList = new List();
    //遍历为两个List进行赋值
    for (int i = 0; i < 10; i++) {
      listIndex.add(i);
      expandStateList.add(ExpandStateBean(i, false));
    }
  }
  //修改展开与闭合的内部方法
  _setCurrentIndex(int index, isExpand) {
    setState(() {
      //遍历可展开状态列表
      expandStateList.forEach((item) {
        if (item.index == index) {
          //取反，经典取反方法
          item.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('手风琴'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('ExpansionTile'),
            ExpansionTile(
              backgroundColor: Colors.white12, //展开的背景色
              leading: Icon(Icons.ac_unit),
              title: Text('手风琴'),
              children: <Widget>[
                ListTile(
                  title: Text('里面的标题'),
                  subtitle: Text('里面的子标题'),
                )
              ],
              initiallyExpanded: false, //初始状态
            ),
            Text('ExpansionPanelList'),
            ExpansionPanelList(
                //交互回掉属性，里边是个匿名函数
                expansionCallback: (index, isExpand) {
                  _setCurrentIndex(index, isExpand);
                },
                //进行map操作，然后用toList再次组成List
                children: listIndex.map((index) {
                  return ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return ListTile(
                          title: Text('这是第 $index 个'),
                        );
                      },
                      body: ListTile(
                        title: Text('展开内容第 $index 个'),
                      ),
                      isExpanded: expandStateList[index].isOpen);
                }).toList())
          ],
        ),
      ),
    );
  }
}

//自定义扩展状态类
class ExpandStateBean {
  var isOpen;
  var index;
  ExpandStateBean(this.index, this.isOpen);
}
