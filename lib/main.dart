import 'package:flutter/material.dart';
import 'package:ejerclone/primeras/pag_uno.dart';

void main() {
  runApp(Paisaje());
}

class Paisaje extends StatefulWidget {
 

  @override
  State<Paisaje> createState() => _PaisajeState();
}

class _PaisajeState extends State<Paisaje> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginApp(),
    );
    
  }
}