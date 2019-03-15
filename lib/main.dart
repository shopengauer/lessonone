import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:lessonone/app_state.dart';
import 'package:redux/redux.dart';

enum Actions{ AddTicker }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final Store<AppState> store = Store<AppState>(  )

  @override
  Widget build(BuildContext context) => StoreProvider(
    store: this.store,
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Text('TODO Widget'),
    )
  );

}
