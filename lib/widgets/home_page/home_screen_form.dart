import 'package:flutter/material.dart';
import '../second_page/form_screen.dart';

class NameWidget extends StatefulWidget {
  @override
  _NameWidgetState createState() => _NameWidgetState();
}

class _NameWidgetState extends State<NameWidget> {
  var name;
  String firstName, lastName;
  final _formKey = GlobalKey<FormState>();

  void _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(32),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name:'),
                validator: (value) =>
                    value.isEmpty ? 'Must provide an input' : null,
                onSaved: (input) => firstName = input,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name:'),
                validator: (input) =>
                    input.isEmpty ? 'Must provide an input' : null,
                onSaved: (input) => lastName = input,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _submit();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                FormWidget(name: Name(firstName, lastName)),
                          ));
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ));
  }
}