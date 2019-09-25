import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  _RadioPageState createState() => _RadioPageState();
}
class _RadioPageState extends State<RadioPage> {
  int _groupValue1 = 1;
  String _groupValue2 = '';

  _onChange1(val){
    this.setState((){
      _groupValue1 = val;
    });
  }
  _onChange2(val){
    this.setState((){
      _groupValue2 = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
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
                  title: Text('md 风格的单选按钮'),
                ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Radio(
                    value: 1,
                    groupValue: _groupValue1, //当value和groupValue一致的时候则选中
                    onChanged: (val){
                      _onChange1(val);
                    },
                  ),
                  Radio(
                    value: 2,
                    groupValue: _groupValue1, 
                    onChanged: (val){
                      _onChange1(val);
                    },
                  ),
                  Radio(
                    value: 3,
                    groupValue: _groupValue1, 
                    onChanged: (val){
                      _onChange1(val);
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.grey
                ),
              ),
              child: Column(
                children: <Widget>[
                  RadioListTile(
                    title: Text('A'),
                    value: 'A',
                    groupValue: this._groupValue2,
                    isThreeLine: false,
                    subtitle: Text('subtitleA'),
                    onChanged: _onChange2,
                  ),
                  RadioListTile(
                    title: Text('B'),
                    value: 'B',
                    groupValue: this._groupValue2,
                    isThreeLine: false,
                    subtitle: Text('subtitleB'),
                    onChanged: _onChange2,
                  ),
                  RadioListTile(
                    title: Text('C'),
                    value: 'C',
                    groupValue: this._groupValue2,
                    isThreeLine: false,
                    subtitle: Text('subtitleC'),
                    onChanged: _onChange2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}