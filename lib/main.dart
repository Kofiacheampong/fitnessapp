import 'package:fitness_app/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: HomePage(),
        theme: ThemeData(fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false),
  );
}
