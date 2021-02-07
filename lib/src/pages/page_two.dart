import 'package:componentes/src/pages/page_usersData.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final opciones = ['Cesar', 'Marifer', 'Andrea', 'Alex', 'Vicky', 'Julio', 'Karmina', 'Erik',
  'Jorge', 'Oscar', 'Lupita', 'Marion', 'Miriam', 'Sergio', 'Mildreth', 'Joshua', 'Liam', 'Fredy',
  'Francisco', 'Gabriela'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de usuarios'),
      ),
      body: ListView(
        children: _crearItems(context),
      ),
    );
  }

  List<Widget> _crearItems(BuildContext context) {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageUser(usuario: opt,)),
            );
        },
      );

      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

}
