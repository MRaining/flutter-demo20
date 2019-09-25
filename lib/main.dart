import 'package:flutter/material.dart';

import 'package:hello_world/basic/text.dart';
import 'package:hello_world/basic/button.dart';
import 'package:hello_world/basic/image.dart';
import 'package:hello_world/basic/icon.dart';
import 'package:hello_world/basic/radio.dart';
import 'package:hello_world/basic/text-field.dart';
import 'package:hello_world/basic/checkbox.dart';

import 'package:hello_world/container/container.dart';
import 'package:hello_world/widget/aboutdialog.dart';
import 'package:hello_world/widget/aboutlisttitle.dart';
import 'package:hello_world/widget/actionchip.dart';
import 'package:hello_world/widget/alertdialog.dart';
import 'package:hello_world/layout/align.dart';

import 'package:hello_world/demo/increment.dart';
import 'package:hello_world/demo/router.dart';
import 'package:hello_world/demo/generator.dart';
import 'package:hello_world/demo/layout.dart';
import 'package:hello_world/demo/bottomnavigationbar/index.dart';
import 'package:hello_world/demo/irregularbottomappbar/index.dart';
import 'package:hello_world/demo/pagerouteranimation1/index.dart';
import 'package:hello_world/demo/frostedglassemo.dart';
import 'package:hello_world/demo/keepalive.dart';
import 'package:hello_world/demo/searchbar.dart';
import 'package:hello_world/demo/wrapflow.dart';
import 'package:hello_world/demo/expansiontile.dart';
import 'package:hello_world/demo/clippath.dart';
import 'package:hello_world/demo/splashscreen.dart';
import 'package:hello_world/demo/slideback.dart';
import 'package:hello_world/demo/draggable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.green, //应用程序的主题
      // ),
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter 组件'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // 当setState被调用时，此方法会重复执行，例如，当上面的_incrementCounter方法完成时
    return Scaffold(
      appBar: AppBar(
        // 这里我们从App.build方法创建的MyHomePage对象中获取值，并使用它来设置我们的appbar标题。
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Text('表单',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
            ),
            Divider(height: 2.0),
            listItem('Text', '文本与字体样式', Icons.aspect_ratio, context, TextPage()),
            listItem('Button', '按钮组件', Icons.aspect_ratio, context, ButtonPage()),
            listItem('Radio', '单选按钮', Icons.aspect_ratio, context, RadioPage()),
            listItem('TextField', '文本输入框', Icons.aspect_ratio, context, TextFieldPage()),
            listItem('Checkbox', '复选框', Icons.aspect_ratio, context, CheckboxPage()),
            Divider(height: 2.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Text('媒体类',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
            ),
            Divider(height: 2.0),
            listItem('Image', '图片', Icons.aspect_ratio, context, ImagePage()),
            listItem('Icon', '图标', Icons.aspect_ratio, context, IconPage()),
            Divider(height: 2.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Text('布局类',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
            ),
            Divider(height: 2.0),
            listItem('Align', '对齐子元素的组件', Icons.aspect_ratio, context, AlignPage()),
            Divider(height: 2.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Text('容器类',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
            ),
            Divider(height: 2.0),
            listItem('Container', '容器组件', Icons.aspect_ratio, context, ContainerPage()),
            Divider(height: 2.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Text('组件类',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
            ),
            Divider(height: 2.0),
            listItem('AboutDialog', '关于对话框', Icons.aspect_ratio, context, AboutDialogPage()),
            listItem('AboutListTile', 'ListTile显示一个关于对话框', Icons.aspect_ratio, context, AboutListTitlePage()),
            listItem('ActionChip', '可点击的chip组件', Icons.aspect_ratio, context, ActionChipPage()),
            listItem('AlertDialog', '对话框组件', Icons.aspect_ratio, context, AlertDialogPage()),
            Divider(height: 2.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Text('小示例',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
            ),
            Divider(height: 2.0),
            listItem('计数器', '官方的第一个例子', Icons.aspect_ratio, context, IncrementPage()),
            listItem('路由', '两例内联路由', Icons.aspect_ratio, context, RouterPage()),
            listItem('起名大师', 'Startup name generator', Icons.aspect_ratio, context, GeneratorPage()),
            listItem('布局', '在Flutter中构建布局', Icons.aspect_ratio, context, LayoutPage()),
            listItem('底部导航栏', 'Bottom Navigation Bar', Icons.aspect_ratio, context, BottomNavigationBarPage()),
            listItem('不规则导航栏', 'Irregular Bottom App Bar', Icons.aspect_ratio, context, IrregularBottomAppBarPage()),
            listItem('路由动画1', 'Page Router Animation', Icons.aspect_ratio, context, PageRouterAnimation()),
            listItem('毛玻璃效果', 'Frosted Glass Emo', Icons.aspect_ratio, context, FrostedGlassEmo()),
            listItem('状态页面保持', 'Keep alive', Icons.aspect_ratio, context, KeepAlivePage()),
            listItem('搜索栏', 'Search Bar', Icons.aspect_ratio, context, SearchBarPage()),
            listItem('流式布局', 'Wrap Flow', Icons.aspect_ratio, context, WrapFlowPage()),
            listItem('手风琴', 'ExpansionTile', Icons.aspect_ratio, context, ExpansionTilePage()),
            listItem('路径裁切', 'Clip Path', Icons.aspect_ratio, context, ClipPathPage()),
            listItem('闪屏动画', 'Splash Screen', Icons.aspect_ratio, context, SplashScreenPage()),
            listItem('右滑返回', 'Slide Back', Icons.aspect_ratio, context, SlideBackPage()),
            listItem('拖拽控件', 'Draggable', Icons.aspect_ratio, context, DraggablePage()),
          ],
        )
      ),
    );
  }

  Widget listItem(String title, String description, IconData icon, BuildContext context, Widget scence) {
    _goDetail() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return scence;
          // return new ThirdPage(title:"请输入昵称");
        }),
      );
    }

    return GestureDetector(
      onTap: _goDetail,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Icon(icon),
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 10),
                        Text(description,
                            style: TextStyle(color: Colors.grey, fontSize: 12))
                      ],
                    )
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward,color: Colors.grey)
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
