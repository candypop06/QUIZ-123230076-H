import 'package:flutter/material.dart';
import 'package:latihan_kuis_a/models/dummy_menu.dart';
import 'package:latihan_kuis_a/screen/homepage.dart';
import '../models/dummy_menu.dart';

class DetailPage extends StatelessWidget {
  final int productIndex;
  const DetailPage({super.key, required this.productIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Menu')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              dummyFoods[productIndex].recipeUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${dummyFoods[productIndex].name}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.category,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '${dummyFoods[productIndex].category}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Rp ${dummyFoods[productIndex].price}',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Deskripsi:',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    dummyFoods[productIndex].description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                    )
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Bahan-bahan:',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '${dummyFoods[productIndex].ingredients}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                    )
                  ),
                  const SizedBox(height: 10),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushAndRemoveUntil(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => HomePage()),
                  //       (route) => false,
                  //     );
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //   backgroundColor: Colors.orange,
                  //   foregroundColor: Colors.white,
                  //   minimumSize: Size(200, 45),
                  //   ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
