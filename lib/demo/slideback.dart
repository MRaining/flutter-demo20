import 'package:flutter/cupertino.dart';

class SlideBackPage extends StatelessWidget {
  const SlideBackPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          height: 100, width: 100,
          color: CupertinoColors.activeGreen,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.play_arrow),
            onPressed: (){
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (BuildContext context){
                  return SlideBackPage();
                })
              );
            },
          ),
        ),
      ),
    );
  }
}