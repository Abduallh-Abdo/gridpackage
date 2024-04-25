import 'package:flutter/material.dart';
import 'package:gridpackage/views/home_view.dart';

void main() {
  runApp(const GridPackage());
}

class GridPackage extends StatelessWidget {
  const GridPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
