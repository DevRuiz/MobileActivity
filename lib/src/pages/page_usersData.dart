
import 'package:flutter/material.dart';

class PageUser extends StatelessWidget {

  final usuario;
  PageUser({Key key, this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Usuarios')),
      body: Center(
        child: Text('$usuario'),
      ),
    );
  }
}