import '../main.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class Name {
  final String firstName;
  final String lastName;

  Name(this.firstName, this.lastName);
}

class FormWidget extends StatelessWidget {
  // This widget is the root of your application.
  final Name name;
  FormWidget({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget userData = Container(
      child: Text('Your first name: ' + name.firstName),
      padding: const EdgeInsets.all(32),
    );

    return MaterialApp(
        title: 'Flutter Layout Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text(name.lastName),
            ),
            body: ListView(
              children: <Widget>[
                Image.asset(
                  'images/lake.jpg',
                  height: 240.0,
                  width: 600.0,
                  fit: BoxFit.cover,
                ),
                userData,
                SecondRoute(),
              ],
            )));
  }
}
