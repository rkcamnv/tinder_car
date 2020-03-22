import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _getBackgroundColor(),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.navigate_before,
              color: _getTextcolor(),
            ),
            Text(
              'Explore',
              style: TextStyle(color: _getTextcolor()),
            ),
            Icon(
              Icons.search,
              color: _getTextcolor(),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[Expanded(child: CardListState()), Row()],
      ),
    );
  }
}

class CardListState extends StatefulWidget {
  CardListState({Key key}) : super(key: key);

  @override
  _CardListStateState createState() => _CardListStateState();
}

class _CardListStateState extends State<CardListState> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Color _getBackgroundColor() {
  return Color.fromARGB(255, 248, 249, 253);
}

Color _getTextcolor() {
  return Color.fromARGB(255, 29, 39, 64);
}
