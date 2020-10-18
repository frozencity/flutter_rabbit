import 'package:flutter/material.dart';
import 'package:rabbit_converter/rabbit_converter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rabbit Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Rabbit Converter Example'),
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
  var formKey = GlobalKey<FormState>();
  var typedString = '';

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(16.0),
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Say Something',
                ),
                validator: (value) {
                  if (value != null) {
                    typedString = Rabbit.uni2zg(value);
                    return null;
                  }
                  return null;
                },
              ),
            ),
            Container(
              child: Text(
                typedString,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            setState(() {});
          }
        },
        label: Text('Convert'),
      ),
    );
  }
}
