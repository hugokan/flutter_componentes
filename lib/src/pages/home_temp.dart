import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Temp'),
      ),
      body: ListView(
        //children: _crearItems() se comenta para usar el otro metodo 
        children: _crearItemsCorta()
      ),
    );
  }

  //desde aqui se crea la llamada para representar la lista
  List<Widget> _crearItems(){
  
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {

      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
      //con los dos .. se refencia al add para añadir el divider
           ..add(Divider());
    
    }

    return lista;

  }

  //este es otro metodo para representar la lista
  List<Widget> _crearItemsCorta(){

    return opciones.map((item){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquiete info'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );

    }).toList();

  }

}