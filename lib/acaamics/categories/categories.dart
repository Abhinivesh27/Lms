import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: GridView(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
  ),
  children: [
    Image.network('https://picsum.photos/250?image=1'),
    Image.network('https://picsum.photos/250?image=2'),
    Image.network('https://picsum.photos/250?image=3'),
    Image.network('https://picsum.photos/250?image=4'),
  ],
)
,
    );
  }
}