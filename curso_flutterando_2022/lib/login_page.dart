import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/logo.png'),
                // child: Image.network(
                //     'https://upload.wikimedia.org/wikipedia/commons/5/53/Wikimedia-logo.png'),
              ),
              SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'E-mail'),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (value) {
                          senha = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password'),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                          onPressed: (() {
                            if (email == 'clinton.almeida10@gmail.com' &&
                                senha == '123') {
                              print('Correto');
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            }
                          }),
                          child: Text('Entrar'))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/imageWallpaper.jpg',
              fit: BoxFit.cover,
            )),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        _body(),
      ],
    ));
  }
}
