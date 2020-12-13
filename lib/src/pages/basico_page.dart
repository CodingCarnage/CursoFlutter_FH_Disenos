import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  const BasicoPage({Key key}) : super(key: key);

  static const TextStyle estiloTitulo = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
  static const TextStyle estiloSubtitulo = TextStyle(fontSize: 14.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://images.unsplash.com/photo-1465268218846-a984c79f1045?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Montaña con nubes',
                        style: estiloTitulo,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        'Una montaña ubicada en cierta parte del mundo',
                        style: estiloSubtitulo,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 30.0,
                ),
                Text(
                  '41',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
