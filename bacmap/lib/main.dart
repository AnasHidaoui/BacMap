import 'package:bacmap/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BacMap());

class BacMap extends StatelessWidget {
  const BacMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blueAccent,
      title: "BacMap",
      home: HomePage(),
    );
  }
}
