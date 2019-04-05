import 'package:flutter/material.dart';
import './task.dart';
import './completed.dart';

class toDoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return toDoState();
  }
}

class toDoState extends State<toDoPage> {
  int _currentIndex = 0;
  List<Widget> _pages = [Task(), Completed()];

  @override
  Widget build(BuildContext context) {
    final List<AppBar> appBars = <AppBar>[
      AppBar(
        title: Text('Todo'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () => Navigator.pushNamed(context, '/new'))
        ],
      ),
      AppBar(
        title: Text('Todo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => print('haisd'),
          )
        ],
      ),
    ];

// ---------------- End Data Prepare -------------------------

    return Scaffold(
      appBar: appBars[_currentIndex],
      body: _pages[_currentIndex],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.blue,
            primaryColor: Colors.white,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(255, 255, 255, .5))),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), title: Text('Task')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.done_all), title: Text('Completed'))
            ],
            onTap: onTabTaped,
            currentIndex: _currentIndex,
          )),
    );
  }

  void onTabTaped(int index) {
    setState(() => _currentIndex = index);
  }
}
