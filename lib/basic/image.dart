import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
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
                  subtitle: Text('Flutter中，可以通过Image来加载并显示图片，Image的数据源可以是asset、文件、内存以及网络。'),
                ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('image/demo.jpeg'),
                    width: 200,
                  ),
                  Image(
                    image: NetworkImage('https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=694f2e75f003918fd3d13ac8613c264b/d439b6003af33a87e338798fc15c10385243b5c9.jpg'),
                    width: 200,
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