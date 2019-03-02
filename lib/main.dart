import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
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




  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(

        //decoration: BoxDecoration(color: Colors.lightBlueAccent, border: Border.all(style: BorderStyle.solid)),
        child: ListView(children: <Widget>[
          DrawerHeader(decoration: BoxDecoration(color: Colors.white, border: Border.all(style: BorderStyle.solid)),
              child: Text("Портфель", style: getDrawerTextStyle())),
          Container(
            decoration: BoxDecoration(color: Colors.white, border: Border.all(style: BorderStyle.solid)),
            child: ListTile(
              leading: getImage(),
              title: Text("AT&T", style: getDrawerTextStyle()),
              onTap: () {},
              trailing: Text('106\$'),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white, border: Border.all(style: BorderStyle.solid)),
            child: ListTile(
              leading: getVloImage(),
              title: Text("Valero Energy", style: getDrawerTextStyle()),
              onTap: () {},
            ),
          ),
          ListTile(
            title: Text("Third"),
            onTap: () {},
          ),
        ]),
      ),
//      appBar: AppBar(
//        leading: new IconButton(
//            alignment: AlignmentDirectional.centerStart,
//            tooltip: "inc",
//            icon: new Icon(Icons.sync),
//            onPressed: _incrementCounter),
//      ),
      persistentFooterButtons: <Widget>[
        FlatButton(onPressed: () {}, child: new Icon(Icons.free_breakfast)),
        FlatButton(onPressed: () {}, child: new Icon(Icons.airport_shuttle)),
        FlatButton(onPressed: () {}, child: new Icon(Icons.local_gas_station))
      ],
      body: Center(child: Text("Main screen")),
    );
  }
}


class IconWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.local_gas_station);
  }
}

getOilIcon() => Icon(Icons.aspect_ratio, color: Colors.black87);
getImage()=> Image.network('https://storage.googleapis.com/iex/api/logos/T.png', scale: 3,);
getVloImage()=> Image.network('https://storage.googleapis.com/iex/api/logos/VLO.png', scale: 3,);
getDrawerTextStyle() => TextStyle(color: Colors.black87, fontSize: 20);

