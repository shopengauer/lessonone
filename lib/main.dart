import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Lesson one'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ListView(children: <Widget>[
        DrawerHeader(child: Text("Head", style: TextStyle(color: Colors.lime))),
        ListTile(title: Text("First"),onTap: (){},),
        ListTile(title: Text("Second"),onTap: (){},),
        ListTile(title: Text("Third"),onTap: (){},),
      ]),
      appBar: AppBar(
        leading: new IconButton(
            alignment: AlignmentDirectional.centerStart,
            tooltip: "inc",
            icon: new Icon(Icons.sync),
            onPressed: _incrementCounter),
      ),
      persistentFooterButtons: <Widget>[
        FlatButton(onPressed: () {}, child: new Icon(Icons.free_breakfast)),
        FlatButton(onPressed: () {}, child: new Icon(Icons.airport_shuttle)),
        FlatButton(onPressed: () {}, child: new Icon(Icons.local_gas_station))
      ],
    );
  }
}
