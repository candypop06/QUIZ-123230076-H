import 'package:flutter/material.dart';
import 'root.dart'; // Add this import - adjust the path/filename as needed

class halamanLogin extends StatefulWidget {
  const halamanLogin({super.key});

  @override
  State<halamanLogin> createState() => _halamanLoginState();
}

class _halamanLoginState extends State<halamanLogin> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool loginBerhasil = false;
  bool _obscure = true;

  void _login() {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Username dan Password harus diisi")),
      );
      return;
    }

    if (username == "076" && password == "076") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Root(nama: username)),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Gagal: Username atau Password salah'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Welcome back to MiniLens!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(150, 0, 0, 0)
                  ),
                ),
                SizedBox(height: 15),
                _usernameField(),
                _passwordField(),
                SizedBox(height: 15),
                _loginButton(),
              ],
            ),
          ),
        ),
    );
  }
  // Widget build itu harus dibuat di dalam sebuah class?

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        enabled: true,
        controller: _usernameController,
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
          enabledBorder: OutlineInputBorder( // yang dipencet
            borderRadius: BorderRadius.all(Radius.circular(0)),
            borderSide:BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: _obscure,
        controller: _passwordController,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.black),
          ),
          suffixIcon: IconButton(
            icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _obscure = !_obscure;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          padding: const EdgeInsets.symmetric(vertical: 25),
        ),
        onPressed: _login,
        child: const Text(
          "Login",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}