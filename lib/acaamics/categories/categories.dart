import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lms/acaamics/attendence/attendence_overview.dart';

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
        backgroundColor: Colors.transparent,
      ),
      body: GridView(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  children: [
    InkWell(child: Image.network('https://picsum.photos/250?image=1',),onTap: () {
       Navigator.push(context, MaterialPageRoute(builder: (context) => AttendenceOverView(),));
    },),
    Image.network('https://picsum.photos/250?image=2'),
    Image.network('https://picsum.photos/250?image=3'),
    Image.network('https://picsum.photos/250?image=4'),
  ],
)
,
    );
  }
}