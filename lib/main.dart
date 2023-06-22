import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteday/pages/startpage.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff071D31),
        ),
        home: const startPage());
  }
}
