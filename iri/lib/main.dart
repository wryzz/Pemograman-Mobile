import 'package:flutter/material.dart';
import 'package:iri/pages/login_page.dart';
import 'package:iri/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
        });
  }
}
