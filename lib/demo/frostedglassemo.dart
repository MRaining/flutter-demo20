import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart' as prefix0; //引入ui库，因为ImageFilter Widget在这个里边。

class FrostedGlassEmo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('毛玻璃效果'),
      ),
      body: Stack( //重叠的Stack Widget，实现重贴
        children: <Widget>[
          //约束盒子组件，添加额外的限制条件到 child上。
          ConstrainedBox(
            //限制条件，可扩展的。
            constraints: const BoxConstraints.expand(),
            child: prefix0.Image.network('https://img.alicdn.com/tfs/TB1PwFdflv0gK0jSZKbXXbK2FXa-768-420.jpg'),
          ),
          Center(
            child: ClipRect( //裁切长方形
              child: BackdropFilter(  //背景滤镜器
                filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0), //图片模糊
                child: Opacity( //透明控件
                  opacity: 0.5,
                  child: Container( // 容器组件
                    width: 500.0,
                    height: 700.0,
                    //盒子装饰器，进行装饰，设置颜色为灰色
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text('1688',
                        style: Theme.of(context).textTheme.display3, //设置比较酷炫的字体
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}