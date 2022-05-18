import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/acaamics/auth/login.dart';
import 'package:lms/consts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("http://velalarengg.ac.in/images/feature1.jpg",),fit: BoxFit.cover),
          color: consts.primary
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "VCET",
              style: GoogleFonts.pacifico(fontSize: 80),
            ),
             Text(
              "LMS",
              style: GoogleFonts.pacifico(fontSize: 30),
            ),
           SizedBox(height: 90,),
            ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),)), child: SizedBox(
              width: MediaQuery.of(context).size.width / 4.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Click here"),
                  Icon(Icons.keyboard_arrow_right_outlined),
                ],
              ),
            ),
          
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green)
            ),)
            





            
          ],
        ),
      ),
    );
  }
}