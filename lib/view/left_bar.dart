import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.network(
                'https://kigili.akinoncdn.com/cms/2020/03/10/daf87621-314d-42cf-8fb9-aa3b89027edf.png',
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.all_inclusive),
                    title: Text("Deneme"),
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    color: Colors.blueGrey,
                  ), ListTile(
                    leading: Icon(Icons.all_inclusive),
                    title: Text("Deneme"),
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    color: Colors.blueGrey,
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
