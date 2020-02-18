/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Bottom sheet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          _settingModalBottomSheet(context);
        },
        child: new Icon(Icons.add),
      ),
    );
  }
}

void _settingModalBottomSheet(context) {

  showModalBottomSheet<dynamic>(
    isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Container(
            color: Color(0xFF737373),
            height: (MediaQuery.of(context).size.height)*0.5,
            width: (MediaQuery.of(context).size.width) *0.5,
            child: Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0),

              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10.0),
                  topRight: const Radius.circular(10.0),
                )
              ),

              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.music_note),
                      title: new Text('Music'),
                      onTap: () {
                        return
                        print('clicked on music');
                      }
                      ),
                  new ListTile(
                      leading: new Icon(Icons.music_note),
                      title: new Text('Music'),
                      onTap: () {
                        return
                          print('clicked on music');
                      }
                  ),
                  new ListTile(
                      leading: new Icon(Icons.music_note),
                      title: new Text('Music'),
                      onTap: () {
                        return
                          print('clicked on music');
                      }
                  ),
                  new ListTile(
                      leading: new Icon(Icons.music_note),
                      title: new Text('Music'),
                      onTap: () {
                        return
                          print('clicked on music');
                      }
                  ),
                  new ListTile(
                      leading: new Icon(Icons.music_note),
                      title: new Text('Music'),
                      onTap: () {
                        return
                          print('clicked on music');
                      }
                  ),
                  new ListTile(
                      leading: new Icon(Icons.music_note),
                      title: new Text('Music'),
                      onTap: () {
                        return
                          print('clicked on music');
                      }
                  ),
                  new ListTile(
                      leading: new Icon(Icons.music_note),
                      title: new Text('Music'),
                      onTap: () {
                        return
                          print('clicked on music');
                      }
                  ),
                  new ListTile(
                      leading: new Icon(Icons.music_note),
                      title: new Text('Music'),
                      onTap: () {
                        return
                          print('clicked on music');
                      }
                  ),
                  new ListTile(
                      leading: new Icon(Icons.music_note),
                      title: new Text('Music'),
                      onTap: () {
                        return
                          print('clicked on music');
                      }
                  ),
                  new ListTile(
                      leading: new Icon(Icons.music_note),
                      title: new Text('Music'),
                      onTap: () {
                        return
                          print('clicked on music');
                      }
                  ),
                  new ListTile(
                    leading: new Icon(Icons.videocam),
                    title: new Text('Video'),
                    onTap: () {
                      return
                        print('clicked on video');

                    },
                  ),
                ],
              ),
            ),
          ),
        );

      });
}
*/

import 'package:flutter/material.dart';
void main() => runApp(
    DragabbleScrollableSheetDemo()
);

class DragabbleScrollableSheetDemo extends StatefulWidget {
  @override
  _DragabbleScrollableSheetDemoState createState() =>
      _DragabbleScrollableSheetDemoState();
}

class _DragabbleScrollableSheetDemoState
    extends State<DragabbleScrollableSheetDemo> {

  bool isClicked = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(

        appBar: AppBar(
          title: const Text('DraggableScrollableSheet'),
        ),

          floatingActionButton: new FloatingActionButton(
            onPressed: () {
              setState(() {
                _settingModalBottomSheet(context);

              });
            },
            child: new Icon(Icons.add),
          ),

        body: isClicked?_settingModalBottomSheet(context):Container(),
        /*Container(
          child: DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.1,
            maxChildSize: 1.0,
            builder: (BuildContext context, myscrollController) {
              return Container(
                color: Colors.tealAccent[200],
                child: ListView.builder(
                  controller: myscrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text(
                          'Dish $index',
                          style: TextStyle(color: Colors.black54),
                        ));
                  },
                ),
              );
            },
          ),
        ),*//*
        Positioned(

          child: FloatingActionButton(onPressed: (){

          }
          ),
        )*/
      ),
    );
  }

   _settingModalBottomSheet(BuildContext context) {
    setState(() {
      isClicked =true;
    });

    return Container(
          child: DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.0,
            maxChildSize: 0.8,
            builder: (BuildContext context, myscrollController) {
              return Container(
                color: Colors.tealAccent[200],
                child: ListView.builder(
                  controller: myscrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text(
                          'Dish $index',
                          style: TextStyle(color: Colors.black54),
                        ));
                  },
                ),
              );
            },
          ),
        );
  }
}