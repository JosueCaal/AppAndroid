import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  static var length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(top: 30, bottom: 50),
        width: double.infinity,
        height: 400,
        decoration: _cardBorders(),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [_BackgroundImagen(), _TextCard()],
        ),
      ),
    );
  }

  BoxDecoration _cardBorders() => BoxDecoration(
      color: Colors.pink[900],
      borderRadius: BorderRadius.circular(25),
      boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)]);
}

class _TextCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      width: double.infinity,
      height: 70,
      //color: Colors.pink[900],
      decoration: BoxDecoration(
          color: Colors.pink[900],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cortes de Pelo Simples',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

class _BotonMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: Colors.pink[900],
        onPressed: () {});
  }
}

class _BackgroundImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        child: Stack(
          children: [
            _iconCard(),
          ],
        ),
      ),
    );
  }
}

class _iconCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: 200.0,
      margin: EdgeInsets.only(top: 0.0, bottom: 130, right: 0, left: 60.0),
      child: Image.asset('assets/LogoSimpleEstetica.png'),
    ));
  }
}
