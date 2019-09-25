import 'package:flutter/material.dart';

class DraggablePage extends StatefulWidget {
  DraggablePage({Key key}) : super(key: key);

  _DraggablePageState createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  Color _draggColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('拖拽控件'),
      ),
      body: Stack(
        children: <Widget>[
          //可拖拽控件
          DraggableWidget(
            offset: Offset(80, 80),
            color: Colors.tealAccent,
          ),
          //可拖拽控件
          DraggableWidget(
            offset: Offset(200, 80),
            color: Colors.redAccent,
          ),
          Center(
            //拖拽目标
            child: DragTarget(
              onAccept: (Color color){
                //接收拖拽颜色
                _draggColor = color;
              }, builder: (context, candidateData, rejectedData){
                //拖拽后构建新的元素
                return Container(
                  width: 200, height: 200,
                  color: _draggColor,
                );
              },
            ),
          )
        ],
      )
    );
  }
}
//可拖拽控件
class DraggableWidget extends StatefulWidget {
  final Offset offset;
  final Color color;
  DraggableWidget({Key key, this.offset, this.color}) : super(key: key);
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset = Offset(0.0, 0.0);
  @override
  void initState() { 
    super.initState();
    offset = widget.offset;
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.color, //接收颜色参数
        child: Container(
          width: 100, height: 100,
          color: widget.color,
        ),
        //拖拽时的表现
        feedback: Container(
          width: 100, height: 100,
          color: widget.color.withOpacity(0.5),
        ),
        //拖拽回调
        onDraggableCanceled: (Velocity velocity, Offset offset){
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}