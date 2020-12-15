import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pageMain(),
          _pageButton(),
        ],
      ),
    );
  }

  Widget _pageMain() {
    return Stack(
      children: <Widget>[
        _colorBackground(),
        _imageBackground(),
        _controls(),
      ],
    );
  }

  Widget _pageButton() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0),),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _colorBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imageBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: const Image(
        image: AssetImage('assets/images/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _controls() {
    const TextStyle estiloTexto =
        TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '11°',
                  style: estiloTexto,
                ),
                const SizedBox(width: 10.0),
                Icon(
                  Icons.cloud,
                  size: 50.0,
                  color: Colors.white,
                ),
              ],
            ),
            Text(
              'Miercoles',
              style: estiloTexto,
            ),
            Expanded(child: const SizedBox()),
            Icon(
              Icons.keyboard_arrow_down,
              size: 70.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
