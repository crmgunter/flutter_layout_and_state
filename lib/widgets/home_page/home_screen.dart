import 'package:flutter/material.dart';
import 'home_content.dart';
import 'home_screen_form.dart';
import '../photo_screen/photo_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Flutter Layout Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Hello Flutter'),
            ),
            body: ListView(
              children: <Widget>[
                Image.asset(
                  'images/lake.jpg',
                  height: 240.0,
                  width: 600.0,
                  fit: BoxFit.cover,
                ),
                titleSection,
                buttonSection,
                textSection,
                NameWidget(),
              ],
            )));
  }
}
