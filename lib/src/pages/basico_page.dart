import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  const BasicoPage({Key key}) : super(key: key);

  static const TextStyle estiloTitulo =
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
  static const TextStyle estiloSubtitulo =
      TextStyle(fontSize: 14.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createActions(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://images.unsplash.com/photo-1465268218846-a984c79f1045?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
        height: 180.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(child: _placeAndLocation()),
            _rating(),
          ],
        ),
      ),
    );
  }

  Widget _placeAndLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Montaña con nubes',
          style: estiloTitulo,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 7.0,
        ),
        Text(
          'Una montaña ubicada en cierta parte del mundo',
          style: estiloSubtitulo,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _rating() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.red,
          size: 28.0,
        ),
        const SizedBox(
          width: 1.0,
        ),
        Text(
          '41',
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  Widget _createActions() {
    return SafeArea(
      top: false,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _action(Icons.call, 'Call'),
          _action(Icons.near_me, 'Route'),
          _action(Icons.share, 'Share')
        ],
      ),
    );
  }

  Widget _action(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 38.0,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(
            fontSize: 11.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  Widget _createDescription() {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Text(
          'Minim proident ipsum velit exercitation sint ad eiusmod amet velit excepteur veniam sunt magna. Cillum laboris velit anim voluptate sunt exercitation. Veniam in velit eu excepteur.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
