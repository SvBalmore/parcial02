import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:parcial/json/chat_json.dart';
import 'package:parcial/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

class vistamenu1 extends StatefulWidget {
  const vistamenu1({super.key});

  @override
  State<vistamenu1> createState() => _vistamenu1State();
}

class _vistamenu1State extends State<vistamenu1> {
  int MenuActivo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  

      Widget getBody() {
        return ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(
                        fontSize: 23, color: white, fontWeight: FontWeight.bold),
                  ),
                  
                  Row(
                    children: [
                      
                        Padding(
                            padding: EdgeInsets.only(top: 10, left: 125),
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://images.pexels.com/photos/6578830/pexels-photo-6578830.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                               
                              ],
                            ),
                          )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                      color: textfieldColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      style: TextStyle(color: white),
                      cursorColor: primary,
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(LineIcons.search, color: black.withOpacity(0.3)),
                          border: InputBorder.none,
                          hintText: "Busqueda",
                          hintStyle: TextStyle(
                              color: black.withOpacity(0.3), fontSize: 17)),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            
                          ),
                        
                          Padding(
                            padding: EdgeInsets.only(top: 5, right: 0, left: 0),
                            child: Divider(color: white.withOpacity(0.3)),
                          ),
                          MenuActivo == 0 ? getvistamenu1() : getvistamenu1Perdidas()
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        );
      }

      Widget getvistamenu1() {
      var tamanio = MediaQuery.of(context).size;
      return SingleChildScrollView(
        child: Column(
          children: List.generate(chat_data.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 0, right: 0, top: 15),
              child: FadeInDown(
                duration: Duration(milliseconds: 100 * index),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          // width: (tamanio.width - 30) * 0.4,
                          child: Row(children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(chat_data[index]['img']),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              // width: (tamanio.width - 100) * 0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    chat_data[index]['name'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.fast_forward,
                                        color: white.withOpacity(0.5),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Ordenar",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: white.withOpacity(0.5),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                        Container(
                          width: 150,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                
                                Icon(
                                  Icons.info_sharp,
                                  color: primario,
                                )
                              ]),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Divider(
                        color: white.withOpacity(0.3),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      );
    }

  Widget getvistamenu1Perdidas() {
    return Container();
  }
}
