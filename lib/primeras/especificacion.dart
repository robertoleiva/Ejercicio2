 import 'package:ejerclone/fijas/fijo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ejerclone/primeras/inicio_app.dart';
//import 'package:ejerclone/primeras/detalleInfo.dart';

class Especificacion extends StatefulWidget {
  final dynamic descri;

  const Especificacion({Key? key, this.descri}) : super(key: key);

  @override
  State<Especificacion> createState() => _EspecificacionState();
}

class _EspecificacionState extends State<Especificacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
     body: definicion(),
    );
  }

  Widget definicion(){
    var carac = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: carac.width,
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.descri['img']),
                  fit: BoxFit.cover
                  ),
                  
                ),
              ),
              SizedBox(
                height: 70,
              ),

              // Tengo que pagar el CODIGO MIO
              
          Padding(padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.descri['nombre'],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
              color: Colors.purple),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5)),
                 child: Padding(
                  padding: const EdgeInsets.only(
                   left: 12, right: 12, top: 8, bottom: 8),
                   child: Text(
                    "JOSUE GABRIEL DIAZ", style: TextStyle(color: Colors.orangeAccent),
                    ),
                 ), 
              ),
            ], 
          ),
          
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
      Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5)),
            child: Padding(padding: const EdgeInsets.only(
              left: 12, right: 12, top: 8, bottom: 8),
              child: Text(
                "LUIS ROBERTO LEIVA"
              ),
            ),

      ),
       SizedBox(height: 3
       ),

       
   
          
      ],
      ),

      );
      
    
                     //ARRIBA PEGUE LO DEL chief es todo UN COLUM


                    ////////////////////////////////////////////////

                    //Desde aqui Borre mi codigo

  }
}


          
  
