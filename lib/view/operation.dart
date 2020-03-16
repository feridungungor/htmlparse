import 'package:http/http.dart' as http;

import 'drawer_child_model.dart';

abstract class Operation {
  List<DrawerChildModel> dChildren;

  Future<bool> myRequest();

  String myData;
}

class OperationDetails implements Operation {
  @override
  List<DrawerChildModel> slaytlar = List();

  @override
  String myData;

  @override
  Future<bool> myRequest() async {
    print("Ben çağırıldım");
    dChildren = [];
    http.get('https://www.kigili.com/').then((response) {
      myData = response.body
          .replaceAll('\n', '')
          .replaceAll('\t', '')
          .replaceAll('   ', '');
      RegExp Etiketler = new RegExp('<ul class="navigation">(.*?)</ul>');
      Match eslesenEtiket = Etiketler.firstMatch(myData);
      String etikethtml = eslesenEtiket.group(1);

      RegExp EtiketFind = new RegExp('');

    });

    return true;
  }

  @override
  List<DrawerChildModel> dChildren;


}
