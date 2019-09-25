import 'package:flutter/material.dart';

//搜索数据
const searchList = [
  "jiejie-大长腿",
  "jiejie-水蛇腰",
  "gege1-帅气欧巴",
  "gege2-小鲜肉"
];
//默认推荐
const recentSuggest = [
  "推荐-1",
  "推荐-2"
];

class SearchBarPage extends StatefulWidget {
  SearchBarPage({Key key}) : super(key: key);

  _SearchBarPageState createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索栏'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context, delegate: SearchBarDelegate());
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
//在点击图标时执行searchBarDelegate 类，这个类继承与SearchDelegate类，继承后要重写里边的四个方法。
class SearchBarDelegate extends SearchDelegate<String>{
  //buildActions方法时搜索条右侧的按钮执行方法，我们在这里方法里放入一个clear图标。 当点击图片时，清空搜索的内容。
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }
  //搜索栏左侧的图标和功能的编写，这里我们才用AnimatedIcon，然后在点击时关闭整个搜索页面
  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }
  // buildResults方法，是搜到到内容后的展现(点击键盘上的搜索按钮后展示的内容)
  @override
  Widget buildResults(BuildContext context){
    return Card(
      color: Colors.green,
      child: Center(
        child: Text(query),
      ),
    );
  }
  //搜索建议，及搜索内容加粗
  @override
  Widget buildSuggestions(BuildContext context){
    //如果搜索结果为空，则显示建议内容，否则显示搜索匹配内容
    final searchResult = query.isEmpty ? recentSuggest : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: searchResult.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
          //匹配文本用黑色加粗显示
          text: TextSpan(
            text: searchResult[index].substring(0, query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            //未匹配文本用灰色显示
            children: [
              TextSpan(
                text: searchResult[index].substring(query.length),
                style: TextStyle(
                  color: Colors.grey
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}