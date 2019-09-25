import 'package:flutter/material.dart';

class ActionChipPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ActionChip'),
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
                  title: Text('一个 material 风格的 chip 组件'),
                ),
            ),
            Container(
              child: ActionChip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text('复'),
                ),
                label: Text('复仇者联盟4'),
                labelPadding: EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.orange,
                clipBehavior: Clip.antiAlias,
                elevation: 2.0, //阴影高度，double
                pressElevation: 4.0,
                padding: EdgeInsets.all(5),
                // materialTapTargetSize: MaterialTapTargetSize.padded,
                onPressed: (){},
                shadowColor: Colors.orange,
                // shape: ShapeBorder,
                tooltip: '想看吗',
              ),
            )
          ],
        ),
      ),
    );
  }
}