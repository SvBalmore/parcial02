import 'package:flutter/material.dart';
import 'package:parcial/paginas/vistamenu3.dart';
import 'package:parcial/paginas/vistamenu2.dart';

import 'package:parcial/paginas/vistamenu1.dart';
import 'package:parcial/paginas/vistamenu4.dart';
import 'package:parcial/temas/colores.dart';

import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int paginaIndex = 0; //inciar index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: chatBoxMe,
      body: getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Código que se ejecuta al presionar el botón flotante
          print('Botón de búsqueda presionado');
        },
        child: Icon(Icons.add),
        backgroundColor: black,
      ),
    );
  }
//yes
  Widget getBody() {
    return IndexedStack(
      index: paginaIndex,
      children: [
      
        vistamenu1(),
               vistamenu4(),
        vistamenu2(),
 
        vistamenu3(),
      ],
    );
  }

  Widget getFooter() {
    List iconosItems = [           Icons.fast_forward,         Icons.flood_sharp,      LineIcons.applePayCreditCard,         Icons.login,    ];
    List textoItems = [           "Menu",      "Categorias",      "Formas de pago",            "Datos Personales"    ];
    return Container(
      height: 90,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(textoItems.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      paginaIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        iconosItems[index],
                        color: paginaIndex == index
                            ? primary
                            : primario.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(textoItems[index],
                          style: TextStyle(
                              fontSize: 10,
                              color: paginaIndex == index
                                  ? primary
                                  : primario.withOpacity(0.9))),
                    ],
                  ),
                );
              })),
        ),
      ),
    );
  }
}