import 'package:flutter/material.dart';
import 'package:flutter_provider_catalog/view/main_page.dart';
import 'package:flutter_provider_catalog/view/my_widget.dart';
import 'package:flutter_provider_catalog/view/operation.dart';

void main() {
  runApp(MyWidget(
    operation: OperationDetails(),
    child: myHomePage(),
  ));
}

class myHomePage extends StatefulWidget {
  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {

  bool _data = false;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    MyWidget.of(context).operation.myRequest().then((value){
      _data = value;
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MainPage(),
      routes: myRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}

var myRoutes = <String, WidgetBuilder>{
  "/mainpage":(BuildContext context) => MainPage(),
};
