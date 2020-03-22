import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socialflutter/pages/details.dart';
import 'package:socialflutter/pages/person.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  void _toPersonPage(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Person()));
  }

  void _toDetailPage(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Search', style: TextStyle(color: Colors.white)),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    _toPersonPage(context);
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
        drawer: _customDrawer(context),
        body: (Container(
          child: _listView(context),
        )));
  }

  Widget _dateWidget(context) {
    return (Wrap(
      alignment: WrapAlignment.spaceBetween,
      runSpacing: 10.0,
      children: <Widget>[
        Material(
            color: Color(0xFF453257),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.0),
                side: BorderSide(color: Colors.white)),
            elevation: 10.0,
            clipBehavior: Clip.antiAlias,
            child: MaterialButton(
              onPressed: () {},
              child: Text('data', style: TextStyle(color: Colors.white)),
            )),
        OutlineButton(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
            onPressed: () {},
            child: Text('data', style: TextStyle(color: Colors.white))),
        MaterialButton(
          onPressed: () {},
          child: Text('data', style: TextStyle(color: Colors.white)),
        ),
        MaterialButton(
          onPressed: () {},
          child: Text('data', style: TextStyle(color: Colors.white)),
        ),
        MaterialButton(
          onPressed: () {},
          child: Text('data', style: TextStyle(color: Colors.white)),
        ),
      ],
    ));
  }

  Widget _channelWidget(context) {
    return (Wrap(
      alignment: WrapAlignment.spaceBetween,
      runSpacing: 10.0,
      children: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Text('data', style: TextStyle(color: Colors.white))),
        FlatButton(
          onPressed: () {},
          child: Text('data', style: TextStyle(color: Colors.white)),
        ),
        FlatButton(
          onPressed: () {},
          child: Text('data', style: TextStyle(color: Colors.white)),
        ),
        FlatButton(
          onPressed: () {},
          child: Text('data', style: TextStyle(color: Colors.white)),
        ),
      ],
    ));
  }

  Widget _customDrawer(context) {
    return (Drawer(
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
                color: Color(0xFF453257),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.only(top: 20.0)),
                    Container(
                      child: Padding(
                        child: Text('All Date',
                            style: TextStyle(color: Color(0xFFAC8EC9))),
                        padding: const EdgeInsets.only(bottom: 5.0),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFAC8EC9), width: 2.0))),
                    ),
                    _dateWidget(context),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text('All Channels',
                            style: TextStyle(color: Color(0xFFAC8EC9))),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFAC8EC9), width: 2.0))),
                    ),
                    _channelWidget(context),
                  ],
                )),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: MaterialButton(
                onPressed: () {
                  print('search');
                },
                minWidth: double.maxFinite,
                height: 64.0,
                color: Theme.of(context).textSelectionColor,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.search,
                              color: Color(0xFF453257), size: 20.0),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Color(0xFF453257),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'All activies',
                        style: TextStyle(color: Color(0xFF453257)),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    ));
  }

  Widget _listViewItem(context) {
    return (Container(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1.0, color: Color(0xFFE8E8E8)))),
          padding: const EdgeInsets.only(right: 16, bottom: 18.0, top: 19.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                            'https://s1.ax1x.com/2020/03/22/8I5LZT.png',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                      ),
                      Text(
                        'Username',
                        style: TextStyle(
                            color: Color(0xFF67616D),
                            fontSize: 12.0,
                            fontFamily: 'SourceSansPro-Semibold'),
                      )
                    ]),
                  ),
                  Container(
                    child: Text(
                      'channel name',
                      style: TextStyle(
                          color: Color(0xFF8560A9),
                          fontSize: 12.0,
                          fontFamily: 'SourceSansPro-Semibold'),
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xFFD3C1E5), width: 1.0),
                        borderRadius: BorderRadius.circular(15.0)),
                    padding: const EdgeInsets.all(5.0),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
              ),
              Text(
                  'Activity Title Name Make it Longer May Longer than One Line',
                  style: TextStyle(
                      color: Color(0xFF453257),
                      fontSize: 18.0,
                      fontFamily: 'SourceSansPro-Semibold')),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
              ),
              Row(
                children: <Widget>[
                  Container(
                      child: SvgPicture.asset('images/time.svg',
                          color: Color(0xFF8560A9)),
                      width: 15.0,
                      height: 15.0),
                  Padding(padding: const EdgeInsets.only(right: 5.0)),
                  Text('14 May 2016 12:22 - 14 May 2016 18:00',
                      style: TextStyle(
                          color: Color(0xFF8560A9),
                          fontSize: 12.0,
                          fontFamily: 'SourceSansPro-Regular'))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
              ),
              Text(
                  '[No longer than 300 chars] Vivamus sagittis, diam in lobortis, sapien arcu mattis erat, vel aliquet sem urna et risus. Ut feugiat sapien mi potenti...',
                  style: TextStyle(
                      color: Color(0xFF67616D),
                      fontSize: 14.0,
                      fontFamily: 'SourceSansPro-Regular')),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
              ),
              Row(
                children: <Widget>[
                  Row(children: <Widget>[
                    Container(
                      child: SvgPicture.asset(
                        'images/check-outline.svg',
                        color: Color(0xFFAC8EC9),
                      ),
                      width: 18.0,
                      height: 18.0,
                      padding: const EdgeInsets.only(right: 5.0),
                    ),
                    Text('I am going!',
                        style: TextStyle(
                            color: Color(0xFF453257),
                            fontSize: 12.0,
                            fontFamily: 'SourceSansPro-Regular')),
                  ]),
                  Padding(padding: const EdgeInsets.only(right: 31.0)),
                  Row(children: <Widget>[
                    Container(
                      child: SvgPicture.asset('images/like-outline.svg',
                          color: Color(0xFFAC8EC9)),
                      width: 18.0,
                      height: 18.0,
                      padding: const EdgeInsets.only(right: 5.0),
                    ),
                    Text('I like it',
                        style: TextStyle(
                            color: Color(0xFF453257),
                            fontSize: 12.0,
                            fontFamily: 'SourceSansPro-Regular')),
                  ]),
                ],
              )
            ],
          ),
        )));
  }

  Widget _listView(context) {
    return (ListView(
      children: <Widget>[
        InkWell(
          child: _listViewItem(context),
          onTap: () {
            _toDetailPage(context);
          },
        )
      ],
    ));
  }
}
