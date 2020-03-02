import 'package:flutter/material.dart';

void main() => runApp(RootPage());

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var items = [
      {"name": "Sid", "age": 30},
      {"name": "Ram", "age": 20}
    ];
    return MaterialApp(
      title: "Dynamic List",
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: <Widget>[
                  Container(
                    child: Text("Way 1"),
                    padding: EdgeInsets.all(5),
                  ),
                  Container(
                    child: Text("Way 2"),
                    padding: EdgeInsets.all(5),
                  ),
                ],
              ),
            ),
            body: TabBarView(children: <Widget>[
              ListView(
                children: items
                    .map((itm) => ListTile(
                          title: Text(
                            itm["name"],
                          ),
                          subtitle: Text(itm["age"].toString()),
                        ))
                    .toList(),
              ),
               ListView.builder(
                 itemCount: items.length,
                 itemBuilder: (BuildContext context, int index) { 
                   return ListTile(
                     title: Text(
                            items[index]["name"],
                          ),
                          subtitle: Text(items[index]["age"].toString()),
                   );
                },
              ),
            ])),
      ),
    );
  }
}
