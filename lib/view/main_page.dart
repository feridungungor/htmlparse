import 'package:flutter/material.dart';

import 'left_bar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      appBar: AppBar(
        title: Text(
          "Ana Sayfa",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
          )
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            _scaffold.currentState.openDrawer();
          },
        ),
      ),
      drawer: LeftBar(),
      body: Center(
          child: SingleChildScrollView(
            child: Container(
        child: Text(""),
      ),
          )),
    );
  }
}
