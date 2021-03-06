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
      decoration: const BoxDecoration(
        gradient: const LinearGradient(
          begin: const FractionalOffset(0.0, 0.6),
          end: const FractionalOffset(0.0, 1.0),
          colors: const <Color>[
            const Color.fromRGBO(52, 54, 101, 1.0),
            const Color.fromRGBO(35, 37, 57, 1.0)
          ],
        ),
      ),
    );

    final blob = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: const <Color>[
              const Color.fromRGBO(236, 98, 188, 1.0),
              const Color.fromRGBO(241, 142, 172, 1.0),
            ],
          ),
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
            const Text(
              'Classify transaction',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Classify this transaction into a particular category',
              style: const TextStyle(
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
          canvasColor: const Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: const TextStyle(
                  color: const Color.fromRGBO(116, 117, 152, 1.0),
                ),
              )),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: const Icon(Icons.calendar_today), label: ''),
          const BottomNavigationBarItem(
              icon: const Icon(Icons.bar_chart), label: ''),
          const BottomNavigationBarItem(
              icon: const Icon(Icons.supervised_user_circle), label: ''),
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
    return Container(
      height: 180.0,
      margin: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: const BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const SizedBox(height: 5.0),
                CircleAvatar(
                  backgroundColor: color,
                  radius: 40.0,
                  child: Icon(icon, color: Colors.white, size: 30.0),
                ),
                Text(
                  text,
                  style: TextStyle(color: color),
                ),
                const SizedBox(height: 5.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
