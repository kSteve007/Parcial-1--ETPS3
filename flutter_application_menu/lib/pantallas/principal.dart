import 'package:flutter/material.dart';
import 'package:flutter_application_menu/pantallas/menu/registrarse.dart';
import 'package:flutter_application_menu/pantallas/menu/configuracion.dart';
import 'package:flutter_application_menu/pantallas/menu/Login.dart';

class Principal extends StatefulWidget {
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _seleccionado = 0;
  void _BarraNavega(int index) {
    setState(() {
      _seleccionado = index;
    });
  }

  final List<Widget> _paginas = [Registrarse(), Login(), Configuracion()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 102, 178, 212),
      body: _paginas[_seleccionado],
      //Barra inferior con opciones de navegación
      bottomNavigationBar:
          //Propiedad para que los botones del navigationBar se autoAjusten
          BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _seleccionado,
              onTap: _BarraNavega,
              items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Registrarse'),
            BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Configuración')
          ]),
    );
  }
}
