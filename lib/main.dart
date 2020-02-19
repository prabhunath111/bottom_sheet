/*import 'package:flutter/cupertino.dart';
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
    backgroundColor: Colors.transparent,
    isDismissible: true,
      useRootNavigator: true,
      context: context,
      builder: (BuildContext context) {
        return
          Container(
            constraints:  BoxConstraints(minHeight: (MediaQuery.of(context).size.height)* 0.2, maxHeight: (MediaQuery.of(context).size.height)* 0.3),
            child: DraggableScrollableSheet(
              expand: true,
              initialChildSize: 1.0,
              minChildSize: 0.0,
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
                          ),
                      );
                    },
                  ),
                );
              },
            ),
        );

      }

      );
}*/

import 'package:flutter/material.dart';

void main() => runApp(DragabbleScrollableSheetDemo());

class DragabbleScrollableSheetDemo extends StatefulWidget {
  @override
  _DragabbleScrollableSheetDemoState createState() =>
      _DragabbleScrollableSheetDemoState();
}

class _DragabbleScrollableSheetDemoState
    extends State<DragabbleScrollableSheetDemo> {
  bool isGestureClicked = false;
  bool isFloatingButtonClicked = false;

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
      home: GestureDetector(
        onTap: () {
          setState(() {
            isGestureClicked = true;
            isFloatingButtonClicked = false;
            _settingModalBottomSheet(context);
          });
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('DraggableScrollableSheet'),
          ),
          floatingActionButton: new FloatingActionButton(
            onPressed: () {
              setState(() {
                isGestureClicked = false;
                isFloatingButtonClicked = true;
                _settingModalBottomSheet(context);
              });
            },
            child: new Icon(Icons.add),
          ),
          body: _settingModalBottomSheet(context),
        ),
      ),
    );
  }

  _settingModalBottomSheet(BuildContext context) {
    if(isGestureClicked && !isFloatingButtonClicked){
      return Container();
    }
    else if (isFloatingButtonClicked && !isGestureClicked){
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
    }else
   Container();
  }
}