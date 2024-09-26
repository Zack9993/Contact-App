import 'package:flutter/material.dart';
import 'package:myapp/ui/contact_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
      theme: ThemeData(),
      home: const ContactListScreen(),
    );
  }
}
