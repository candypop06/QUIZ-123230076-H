import 'package:flutter/material.dart';
import 'login.dart';

class ProfilePage extends StatelessWidget {
  final String nama;
  const ProfilePage({super.key, required this.nama});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Profil',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          )
        )
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.orange
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Nama',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ': ${nama}',
                    // 'NIM: ${key}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'NIM ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    ': 076',
                    // 'NIM: ${key}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Hobi ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 27),
                  Text(
                    ': Mencari hiburan',
                    // 'NIM: ${key}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => halamanLogin()),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  minimumSize: Size(200, 45),
                ),
                child:
                  Row(
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 14,
                        )
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
