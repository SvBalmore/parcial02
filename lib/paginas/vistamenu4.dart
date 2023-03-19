import 'package:flutter/material.dart';
import 'package:parcial/temas/colores.dart';

class vistamenu4 extends StatelessWidget {
  final categories = [    {'title': 'MacDonals', 'image': 'https://images.pexels.com/photos/11473398/pexels-photo-11473398.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'},    
  {'title': 'Postres', 'image': 'https://images.pexels.com/photos/4553014/pexels-photo-4553014.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'},    
  {'title': 'Comida tipica', 'image': 'https://images.pexels.com/photos/1109197/pexels-photo-1109197.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'},  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('Comestibles'),
          backgroundColor: bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categorías',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 150.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(
                    title: categories[index]['title']!,
                    image: categories[index]['image']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;

 CategoryCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navegar a la pantalla de la categoría seleccionada
      },
      child: Container(
        width: 120.0,
        margin: EdgeInsets.only(right: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
