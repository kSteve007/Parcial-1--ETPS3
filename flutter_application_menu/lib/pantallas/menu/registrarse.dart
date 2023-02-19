import 'package:flutter/material.dart';

class Registrarse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Image.network("hhtps"), //imagen externa
        SizedBox(
          height: 25, //espaciado
        ),
        Text(
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          "PARCIAL 1 -ETPS3",
        ),
        Text(
          style: TextStyle(fontSize: 11, color: Colors.white),
          "Nombres: Kevin Steve Quintanilla- # 25-1711-2018",
        ),
        Text(
          style: TextStyle(fontSize: 11, color: Colors.white),
          "Nombres: Luis Asuncion Rosales- # 25-1713-2018",
        ),
        Image.asset(height: 150, "assets/register.png"),
        SizedBox(
          height: 10, //espaciado
        ), //img interna
        _nombreinputCarnet(),
        SizedBox(
          height: 5, //espaciado
        ),
        _nombreinput(),
        SizedBox(
          height: 5, //espaciado
        ),
        _nombreinputApellido(),
        SizedBox(
          height: 5, //espaciado
        ),
        _nombreinputDireccion(),
        SizedBox(
          height: 5, //espaciado
        ),
        _nombreinputpass(),
        SizedBox(
          height: 5, //espaciado
        ),
        _nombreinputRepass()
        // caja de texto
      ],
    );
  }

  Container _nombreinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(Icons.book, color: Colors.white),
              hintText: 'Ingrese su Nombre',
              border: InputBorder.none),
        ));
  }

  Container _nombreinputpass() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(Icons.password, color: Colors.white),
              hintText: 'Ingrese su contraseña',
              border: InputBorder.none),
          obscureText: true,
        ));
  }

  Container _nombreinputRepass() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(Icons.repeat, color: Colors.white),
              hintText: 'Repita su contraseña',
              border: InputBorder.none),
          obscureText: true,
        ));
  }

  Container _nombreinputApellido() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              hintText: 'Ingrese su Apellido',
              border: InputBorder.none),
          obscureText: false,
        ));
  }

  Container _nombreinputCarnet() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(
                Icons.card_membership_outlined,
                color: Colors.white,
              ),
              hintText: 'Ingrese su Carnet',
              border: InputBorder.none),
          obscureText: false,
        ));
  }

  Container _nombreinputDireccion() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          maxLength: 20,
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(
                Icons.card_membership_outlined,
                color: Colors.white,
              ),
              hintText: 'Ingrese su Dirección',
              border: InputBorder.none),
          obscureText: false,
        ));
  }
}
