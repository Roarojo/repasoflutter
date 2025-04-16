
import 'package:flutter/material.dart';
import 'package:repasoflutter/widget/Repaso1.dart';
import 'package:repasoflutter/widget/Repaso2.dart';
import 'package:repasoflutter/widget/Repaso3.dart';
import 'package:repasoflutter/widget/Repaso4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Repaso4(),
    );
  }
}

