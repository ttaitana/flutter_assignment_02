import 'package:flutter/material.dart';
import './ui/todo.dart';
import './ui/newSubject.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment 02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/',
      routes: {
        '/' : (context) => toDoPage(),
        '/new' : (context) => newSubject()
      },
    );
  }
}
