import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Search', style: TextStyle(color: Colors.white)),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    print('press icon');
                  })
            ],
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            )),
        drawer: _customDrawer(),
        body: (Container(
          child: Text('Hello flutter'),
        )));
  }

  Widget _customDrawer() {
    return (Drawer(
      child: Text('1234'),
    ));
  }
}
