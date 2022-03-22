 import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../fijas/fijo.dart';
import 'package:ejerclone/primeras/especificacion.dart';
import 'package:page_transition/page_transition.dart';


class PaginaUno extends StatefulWidget {
  @override
  State<PaginaUno> createState() => _PaginaUnoState();
}

class _PaginaUnoState extends State<PaginaUno> {
  int inicioMenu = 0;
  int inicioMenu1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: demostrarApp(),
        
      ),
      body: ejerApp(),
    );
  }

  Widget demostrarApp(){
    return AppBar(
      backgroundColor: Colors.blueAccent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "CIENCIA-TECNOLOGIA",
              style: TextStyle(fontSize: 20, color: Colors.purple,
              fontWeight: FontWeight.bold),
              ),
              Icon(Entypo.list),
          ],

        ),
        
        ),
    );
  }


  //otro widget mio
  /*Widget musicApp(){
    return AppBar(
      backgroundColor: Colors.blueAccent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "EVENTOS",
              style: TextStyle(fontSize: 20, color: Colors.purple,
              fontWeight: FontWeight.bold),
              ),
              Icon(Entypo.list),
          ],
        ),
        ),
    );
  } */
//hasta aqui mi Widget




Widget ejerApp(){
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          //crossAxisAlignment: CrossAxisAlignment.start,
          child: Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: Row(
                    children: List.generate(paisajes.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {

                              inicioMenu = index;
                            });

                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                              paisajes[index], 
                              style: TextStyle(
                                //color: Colors.blueGrey, 
                                fontSize: 15, 
                                color: inicioMenu==index? Colors.white:Colors.blueAccent,
                                fontFamily: 'RobotoMono', fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 3,
                              ),
                              inicioMenu==index ?
                              Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                            
                              ): Container()
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                
              ),
            ),
            SizedBox(height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: List.generate(descripcion.length, (index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.push( // Esto es la fila 1 de PAISAJES al dar CLIK a cualquier IMAGEN lleva a otra Ventana Muestra solo la imagen y la descripcion
                            context, 
                            PageTransition(
                            alignment: Alignment.bottomCenter,
                            child: Especificacion(  //El TRANSITION hay que agregarlo al terminal importar la libreria
                              descri: descripcion[index],
                            ),
                            type: PageTransitionType.scale
                          ));
                          
                        }),
                        child: Column(
                          children: [
                            Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(descripcion[index]['img']),
                                fit: BoxFit.cover),
                                color: Colors.blueAccent, 
                                borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(height: 20,
                            ),
                            Text(descripcion[index]['nombre'], style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                           ),
                           SizedBox(
                             height: 10,
                            ),
                            Container(
                              width: 180,
                              child: Text(
                                descripcion[index]['tipo'], 
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                fontSize: 15,
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.bold),
                           ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          //crossAxisAlignment: CrossAxisAlignment.start,
          child: Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: Row(
                    children: List.generate(animales.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              inicioMenu = index;
                            });

                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                              animales[index], 
                              style: TextStyle(
                                //color: Colors.blueGrey, 
                                fontSize: 15, 
                                color: inicioMenu1==index? Colors.white:Colors.blueAccent, //Aqui  Menu1
                                fontFamily: 'RobotoMono', fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 3,
                              ),
                              inicioMenu1==index ?  //Aqui Menu1
                              Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)), 
                              ): Container()
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
              ),
            ),
            SizedBox(height: 20,
            ),

            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: List.generate(descripcion.length, (index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.push( // Esto es la fila 2 de ANIMALES, AL DAR CLIK LLEVA a otra ventana Muestra solo la imagen y la descripcion
                            context, 
                            PageTransition(
                            alignment: Alignment.bottomCenter,
                            child: Especificacion(  //El TRANSITION hay que agregarlo al terminal importar la libreria
                              descri: descripcion[index],
                            ),
                            type: PageTransitionType.scale
                          ));
                        }),
                        child: Column(
                          children: [
                            Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(descripcion[index]['img']),
                                fit: BoxFit.cover),
                                color: Colors.blueAccent, 
                                borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(height: 20,
                            ),
                            Text(descripcion[index]['nombre'], style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                           ),
                           SizedBox(
                             height: 10,
                            ),
                            Container(
                              width: 180,
                              child: Text(
                                descripcion[index]['tipo'], 
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                fontSize: 15,
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.bold),
                           ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),

        ],
      ),
 
    );
  
  }

} 