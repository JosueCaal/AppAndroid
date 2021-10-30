import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:productos_app/widgets/widgets.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'home'),
                child: MenuCard(),
              )),
    ));
  }
}
