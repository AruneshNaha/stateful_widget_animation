import 'package:flutter/material.dart';
import 'newScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Animation Flutter Demo'),
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
  String data;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button ${_counter == 0 ? 'none' : _counter} times',
              style: Theme.of(context).textTheme.display1,
              textAlign: TextAlign.center,
            ),
            Hero(
              tag: 'tag',
              child: FlatButton(
                color: Colors.blue,
                child: Center(
                    child: Text(
                  'PRESS HERE TO MOVE TO NEW PAGE',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          pageBuilder: (_, __, ___) => NewScreen()));
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
