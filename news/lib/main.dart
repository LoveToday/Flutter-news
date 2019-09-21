import 'package:flutter/material.dart';
// 此方法比较简洁
// void main(List<String> args) => runApp(MyApp());

main(List<String> args) {
  runApp(MyApp());
}

class _MyAppState extends State<MyApp> {
  List<String> news = ["first"];
  @override
  Widget build(BuildContext context) {
    // 上导航
    AppBar appBar = AppBar(
      title: Text('Vaffle'),
    );

    // 最上面的添加按钮
    Container addContainer = Container(
      margin: EdgeInsets.all(1.0),
      child: RaisedButton(
        child: Text("添加资讯"),
        onPressed: () {
          print('点击');
          news.add("second");
        },
      ),
    );
    // 创建cell
    Card createCell(String model) {
      Card cell = Card(
        child: Column(
          children: <Widget>[Image.asset('assets/three.jpg'), Text(model)],
        ),
      );
      return cell;
    }

    Column appBody = Column(
      children: <Widget>[
        addContainer,
        Column(
          children: news
              .map(
                (element) => createCell(element),
              )
              .toList(),
        )
      ],
    );

    return MaterialApp(
      home: Scaffold(appBar: appBar, body: appBody),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
