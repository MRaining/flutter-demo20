import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(20),
              child: 
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  leading: Icon(Icons.notifications, color: Colors.orange,),
                  subtitle: Text('“ 文本”小组件显示单个样式的文本字符串。字符串可能会跨越多行，也可能全部显示在同一行上，具体取决于布局约束。'),
                ),
            ),
            Container(
              padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text('DC的王牌来得庄重，漫威的最伟大英雄就更加亲民些，毕竟他是每个纽约市民的好邻居。虽然蜘蛛侠的在很多方面并不出众，但却以独特的平民化魅力为粉丝所称道。从1963年开始连载的《神奇蜘蛛侠v1》，更新的记录一直飙升到700，历久弥新的故事中，还会有各个平行宇宙中几十位不同的蜘蛛侠受到蜘蛛图腾的感召。2000年时《蜘蛛侠》和《x战警》开启了上一个漫改电影的时代，在《超凡蜘蛛侠》的不佳表现后，我们即将见证第三代小蜘蛛的回归',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(color: Colors.blue),
                      textScaleFactor: 1.2,
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'X战警队伍中，最老油条的角色当属金刚狼，能在电影作品中首先单飞的还是金刚狼；常年以不死基因护身的事无解金刚狼，而后必须要面对死亡威胁的也是金刚狼。这位总能与绿巨人、死侍及其他变种人打成一片的桀骜不驯',
                        children: <TextSpan>[
                          TextSpan(text: 'beautiful', style: TextStyle(color: Colors.orange)),
                          TextSpan(text: 'world', style: TextStyle(color: Colors.pink))
                        ]
                      )
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}