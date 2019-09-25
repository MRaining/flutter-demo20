import 'package:flutter/material.dart';

class WrapFlowPage extends StatefulWidget {
  WrapFlowPage({Key key}) : super(key: key);

  _WrapFlowPageState createState() => _WrapFlowPageState();
}

class _WrapFlowPageState extends State<WrapFlowPage> {
  List<Widget> _list;
  //初始化状态，给list添加值，这时候调用了一个自定义方法`buildAddButton`
  @override
  void initState() { 
    super.initState();
    _list = List<Widget>()..add(buildAddButton());
  }
  //构建添加按钮
  Widget buildAddButton(){
    //返回一个手势Widget，点击添加处理手势事件
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        width: 80.0,
        height: 80.0,
        color: Colors.blue,
        child: Icon(Icons.add),
      ),
      onTap: (){
        if(_list.length < 9){
          setState(() {
            //在后面插入一个元素
            _list.insert(_list.length - 1, buildPhoto());
          });
        }
      },
    );
  }
  Widget buildPhoto(){
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: 80.0,
      height: 80.0,
      color: Colors.orange,
      child: Center(
        child: Text('照片'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    //得到屏幕的高度和宽度，用来设置Container的宽和高
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10.0),
          width: _width - 20.0,
          height: _height / 2,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.purple,
              width: 2,
            ),
            color: Colors.grey.shade200
          ),
          //流式布局
          child: Wrap(
            children: _list,
            spacing: 26.0, //设置间距
          ),
        ),
      )
    );
  }
}