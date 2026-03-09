import 'package:flutter/material.dart';
import 'detail.dart';
import '../models/movie_model.dart';

class HomePage extends StatelessWidget {
  final String nama;
  const HomePage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome, $nama!',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: movieList.length,
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
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Colors.black, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      movieList[index].imgUrl,
                      width: 70,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch ,
                        children: [
                          Text(
                            '${movieList[index].title} (${movieList[index].year})',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            movieList[index].genre,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '${movieList[index].rating}/10',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Icon(Icons.bookmark, color: Colors.blue),
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
