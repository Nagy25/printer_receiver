import 'package:flutter/material.dart';
import 'package:printer_receiver/ui/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Printer receiver',
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}
