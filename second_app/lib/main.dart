import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Old Learner'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "New App",
      home: Scaffold(
          appBar: AppBar(
            title: Text('Learning Flutter'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _products.add('Lovely Learner');
                    });
                  },
                  child: Text('Add Course'),
                ),
              ),
              Column(
                children: _products
                    .map(
                      (element) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/food.jpg'),
                            Text(element)
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          )),
    );
  }
}
