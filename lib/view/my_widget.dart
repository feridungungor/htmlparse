import 'package:flutter/cupertino.dart';
import 'package:flutter_provider_catalog/view/operation.dart';

class MyWidget extends InheritedWidget {
  final Operation operation;

  MyWidget({Key key, @required Widget child, this.operation})
      : super(key: key, child: child);

  static MyWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(MyWidget);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => null;
}
