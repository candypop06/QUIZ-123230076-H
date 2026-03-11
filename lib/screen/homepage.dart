import 'package:flutter/material.dart';
import 'detail.dart';
import '../models/dummy_menu.dart';

class HomePage extends StatefulWidget {
  final String nama;
  const HomePage({super.key, required this.nama});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<bool> _isFav;

  @override
  void initState() {
    super.initState();
    // awalnya semua belum difavoritkan
    _isFav = List<bool>.filled(dummyFoods.length, false);
  }

  void _toggleList(int index) {
    setState(() {
      _isFav[index] = !_isFav[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Food Menu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: dummyFoods.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(productIndex: index),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(color: Colors.black, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      dummyFoods[index].image,
                      width: 100,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '${dummyFoods[index].name}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${dummyFoods[index].category} - Rp ${dummyFoods[index].price}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 16
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}