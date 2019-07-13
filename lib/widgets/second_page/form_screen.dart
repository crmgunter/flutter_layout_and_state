import 'package:flutter/material.dart';
import '../photo_screen/photo_screen.dart';

class BackToHomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class TakePhotoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new PhotoScreen()),
            );
          },
          child: Text('Take a photo!'),
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
    final firstName = name.firstName;
    final lastName = name.lastName;

    Widget userData = Column(
      children: <Widget>[
        Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              'Hello, $firstName $lastName!',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ))
      ],
    );

    return Scaffold(
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
            TakePhotoButton(),
            BackToHomeButton(),
          ],
        ));
  }
}
