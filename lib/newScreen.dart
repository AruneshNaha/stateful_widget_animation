import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class NewScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _stateapp();
  }
}

class _stateapp extends State<NewScreen> {
  String data = '';

  fetchdata() async {
    String responseText;
    responseText = await rootBundle.loadString('Text/text.txt');
    setState(() {
      data = responseText;
    });
  }

  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Hero(
          tag: 'tag',
          child: Container(
              color: Colors.blue,
              child: Center(
                  child: Text(
                data != null ? data : 'No Text to display',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              )))),
    );
  }
}
