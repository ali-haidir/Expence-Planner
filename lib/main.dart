import 'package:expence_planner/widgets/user_transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //String titleinput;
  //String Amountinput;
  final titlecontrol = TextEditingController();
  final amountcontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expence Planner"),
        ),
        body: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                // color: Colors.redAccent,
                child: Card(
                  color: Colors.lightGreenAccent,
                  child: Text("Chart"),
                  elevation: 5,
                ),
              ),
              UserTranaction(),
            ],
          ),
        ));
  }
}
