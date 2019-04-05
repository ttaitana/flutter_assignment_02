import 'package:flutter/material.dart';

class newSubject extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('New Subject'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formkey,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(hintText: 'Subject'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please fill subject';
                    }
                  },
                ),
                RaisedButton(
                  child: Text('Save'),
                  onPressed: () {
                    if (_formkey.currentState.validate()) {
                      Navigator.pop(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
