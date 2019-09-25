import 'package:flutter/material.dart';
import 'dart:math';

class CheckboxPage extends StatefulWidget {
  CheckboxPage({Key key}) : super(key: key);

  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                contentPadding: EdgeInsets.all(15),
                leading: Icon(
                  Icons.notifications,
                  color: Colors.orange,
                ),
                title: Text('复选框'),
              ),
            ),
            Container(
              child: Column(children: checkboxDefaultList(context, this)),
            )
          ],
        ),
      ),
    );
  }

  List checkboxDefaultList(BuildContext context, _CheckboxPageState that) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          CheckboxDefault(),
          CheckboxDefault(),
          CheckboxDefault(),
          CheckboxDefault(),
          CheckboxDefault(),
        ],
      )
    ];
  }
}

//基础示例
class CheckboxDefault extends StatefulWidget {
  final int index;
  final parent;
  CheckboxDefault({Key key, this.parent, this.index = -1}) : super(key: key);

  _CheckboxDefaultState createState() => _CheckboxDefaultState();
}

class _CheckboxDefaultState extends State<CheckboxDefault> {
  bool isChecked = false;
  Color color = _randomColor();
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: color,
      tristate: false,
      value: isChecked,
      onChanged: (bool val) {
        if (mounted) {
          setState(() {
            isChecked = val;
          });
        }
      },
    );
  }
}

Color _randomColor() {
  var red = Random.secure().nextInt(255);
  var greed = Random.secure().nextInt(255);
  var blue = Random.secure().nextInt(255);
  return Color.fromARGB(255, red, greed, blue);
}
