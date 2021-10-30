import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _PurpleBox(),
          _HeaderIcon(),
          /*Container(
            child: Image.asset('assets/Logo.jpeg'),
            width: double.infinity,
          ),*/
          this.child,
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 100.0,
        margin: EdgeInsets.only(top: 50.0, left: 129.0),
        child: Image.asset('assets/LogoSimpleEstetica.png'),
        //child: Icon(Icons.person_pin, color: Colors.white, size: 100),
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackground(),
      child: Stack(
        children: [
          Positioned(child: _Bubble(), top: 130, left: 10),
          Positioned(child: _Bubble(), top: -40, left: -30),
          Positioned(child: _Bubble(), top: 30, left: 105),
          Positioned(child: _Bubble(), top: -50, right: -10),
          Positioned(child: _Bubble(), bottom: -50, left: 150),
          Positioned(child: _Bubble(), bottom: 70, right: -35),
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(0, 0, 0, 1),
        Color.fromRGBO(0, 0, 0, 1),
      ]));
}

class _Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(94, 33, 41, 0.8)),
    );
  }
}
