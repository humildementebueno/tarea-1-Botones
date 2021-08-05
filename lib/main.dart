import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarea 1',
      home: Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  TextEditingController nom_Controller = TextEditingController();
  TextEditingController ape_Controller = TextEditingController();
  TextEditingController ci_Controller = TextEditingController();
  TextEditingController texto_Controller = TextEditingController();
  String nombre = "";
  String apellido = "";
  String ci = "";
  String textoo = "";
  bool sw_nom = false;
  bool sw_ape = false;
  bool sw_ci = false;
  bool sw_tex = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Botones"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          Text(
            nombre,
            style: TextStyle(
              fontSize: 35,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 115),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  if (sw_nom) {
                    nombre = "Jonatan Nicolas";
                    sw_nom = false;
                  } else {
                    nombre = "";
                    sw_nom = true;
                  }
                  print("sw 1 : " + sw_nom.toString());
                });
              },
              child: Text("Boton 1"),
            ),
          ),
          Text(
            apellido,
            style: TextStyle(
              fontSize: 35,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 115),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  if (sw_ape) {
                    apellido = "Mallea Carrasco";
                    sw_ape = false;
                  } else {
                    apellido = "";
                    sw_ape = true;
                  }
                  print("sw 2 : " + sw_ape.toString());
                });
              },
              child: Text("Boton 2"),
            ),
          ),
          Text(
            ci,
            style: TextStyle(
              fontSize: 35,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 115),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  if (sw_ci) {
                    ci = "11102296 LP";
                    sw_ci = false;
                  } else {
                    ci = "";
                    sw_ci = true;
                  }
                  print("sw 3 : " + sw_ci.toString());
                });
              },
              child: Text("Boton 3"),
            ),
          ),
          Text(
            textoo,
            style: TextStyle(
              fontSize: 35,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 115),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  if (sw_tex) {
                    textoo = "UMSA INFORMATICA";
                    sw_tex = false;
                  } else {
                    textoo = "";
                    sw_tex = true;
                  }
                  print("sw 4 : " + sw_tex.toString());
                });
              },
              child: Text("Boton 4"),
            ),
          ),
        ],
      ),
    );
  }
}
