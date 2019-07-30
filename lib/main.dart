import 'package:flutter/material.dart';
import 'activity/second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        hintColor: Colors.red,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      debugPrint("1111");
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Text(
              'You have clicked the button this many times:',
              textAlign: TextAlign.center,
            ),
            Text(
              '$_counter',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            RaisedButton(
              color: Colors.red,
              highlightColor: Colors.red,
//            splashColor: Color(0x00000000),
              elevation: 2,
              highlightElevation: 2,
              disabledElevation: 0,
              child: Text("nima1111111111"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () => {debugPrint("dianjile")},
            ),
            Image.network(
              'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
              width: 300,
              height: 300,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.ac_unit,
                  size: 50,
                  color: Colors.red,
                ),
                Icon(
                  Icons.airline_seat_individual_suite,
                  size: 50,
                  color: Colors.green,
                ),
                Icon(Icons.android, size: 50, color: Colors.blue),
              ],
            ),
            Container(
              width: 20,
              height: 29,
              child: Switch(
                value: true,
                inactiveThumbColor: Colors.red,
                activeColor: Colors.blue,
              ),
            ),
            Builder(
              builder: (context) {
                return Checkbox(
                  value: true,
                  activeColor: Colors.red,
                );
              },
            ),
            TextField(
              decoration: new InputDecoration(
                  hintText: "this is hint text",
                  hintStyle: TextStyle(color: Colors.grey)),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.go,
              textAlign: TextAlign.start,
              autofocus: false,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
              child: TextField(
                decoration: new InputDecoration(
                    hintText: "this is hint text", border: InputBorder.none),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.go,
                textAlign: TextAlign.start,
                autofocus: false,
              ),
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.red, width: 1))),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Future<Object> data =
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
            return new NewRoute();
          }));
//          Navigator.pop(context,Object());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
