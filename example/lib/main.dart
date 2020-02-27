
import 'package:flutter/material.dart';
import 'rabbit_converter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Rabbit Converter Example'),
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
                validator: (value){
                  if (value != null){
                    /// This gets the value from the textfield and converts it, stored it in the var "typedString".
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
        onPressed: (){
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            setState(() {

            });
          }
        },
        label: Text('Convert'),
      ),
    );
  }
}
