import 'package:chat_app/provider/login.dart';
import 'package:chat_app/screens/login.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_socket_io/providers/login.dart';
// import 'package:flutter_socket_io/screens/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Socket IO',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          create: (context) => LoginProvider(),
          child: const LoginScreen(),
        ));
  }
}
