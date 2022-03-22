import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ejerclone/primeras/inicio_app.dart';


import 'inicio_app.dart';


class PaginApp extends StatefulWidget {
  @override
  State<PaginApp> createState() => _PaginAppState();
}

class _PaginAppState extends State<PaginApp> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      bottomNavigationBar: botonesFooter(),
      body: irPagina(),

    );
  }

Widget irPagina(){
  return IndexedStack(
    index: activeTab,
    children: [
      PaginaUno(),
  /*
    Center(
      child: Text(
        "Inicio",
        style: TextStyle(
          fontSize: 20, color: Colors.blue,
          fontWeight: FontWeight.bold
        ),
      ),
    ), */

    Center(
      child: Text(
        "Buscar",
        style: TextStyle(
          fontSize: 20, color: Colors.blue,
          fontWeight: FontWeight.bold
        ),
      ),
    ),

    Center(
      child: Text(
        "Favorito",
        style: TextStyle(
          fontSize: 20, color: Colors.blue,
          fontWeight: FontWeight.bold
        ),
      ),
    ),

    Center(
      child: Text(
        "Registro",
        style: TextStyle(
          fontSize: 20, color: Colors.blue,
          fontWeight: FontWeight.bold
        ),
      ),
    ),


    ],
  );

}

  Widget botonesFooter() {

    List items = [
      FeatherIcons.home,
      FeatherIcons.search,
      Icons.favorite,
      Icons.group,


    ];
  
      return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.purple), //cambiar a negro
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
             activeTab;
            return IconButton(
                onPressed: () {
                  setState(() {
                     activeTab = index;
                  });
                },
                icon: Icon(
                  items[index],
                  color: activeTab == index ? Colors.black : Colors.red,
                ));
          }),
        ),
      ),
    );


 } 


}