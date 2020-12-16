import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _title(),
                _buttons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _background() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(35, 37, 57, 1.0)
            ]),
      ),
    );

    final blob = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ]),
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          child: blob,
          top: -100.0,
        ),
      ],
    );
  }

  Widget _title() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: ''),
        ],
      ),
    );
  }

  Widget _buttons() {
    return Table(
      children: <TableRow>[
        TableRow(children: <Widget>[
          _createButton(Colors.blueAccent, Icons.border_all, 'General'),
          _createButton(Colors.purpleAccent, Icons.mail, 'Mail'),
        ]),
        TableRow(children: <Widget>[
          _createButton(Colors.redAccent, Icons.cloud, 'Weather'),
          _createButton(Colors.amberAccent, Icons.verified_user, 'Security'),
        ]),
        TableRow(children: <Widget>[
          _createButton(Colors.cyanAccent, Icons.sanitizer, 'Santized'),
          _createButton(Colors.limeAccent, Icons.alarm, 'Alarm'),
        ]),
        TableRow(children: <Widget>[
          _createButton(Colors.indigoAccent, Icons.nightlife, 'Dark'),
          _createButton(Colors.tealAccent, Icons.add, 'Add'),
        ]),
      ],
    );
  }

  Widget _createButton(Color color, IconData icon, String text) {
    return Opacity(
      opacity: 0.80,
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromRGBO(62, 66, 107, 1.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 30.0,
              child: Icon(icon, color: Colors.white, size: 30.0),
            ),
            Text(text, style: TextStyle(color: color)),
          ],
        ),
      ),
    );
  }
}
