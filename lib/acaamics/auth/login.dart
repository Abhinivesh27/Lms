import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginpageWidget extends StatefulWidget {
  const LoginpageWidget({Key? key}) : super(key: key);

  @override
  State<LoginpageWidget> createState() => _LoginpageWidgetState();
}

class _LoginpageWidgetState extends State<LoginpageWidget> {
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var buttonTitle = "Staff";
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          
          image: DecorationImage(image: NetworkImage("https://velalarengg.ac.in/old/images/c33.jpg"),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: height / 4,
                width: width / 1.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                      LoginButton(buttonTitle: "Staffs", height: height, width: width),
                      Spacer(),
                      LoginButton(buttonTitle: "Students", height: height, width: width),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.buttonTitle,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String buttonTitle;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
    style: ElevatedButton.styleFrom(
      primary: Colors.white60,
    elevation: 50,
    shadowColor: Colors.green,
    
    ),
      onPressed: () {},
      child: Container(   
        child: Center(
          child: Text(buttonTitle,
          style: GoogleFonts.ubuntu(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87
          )
          )
        ),
        height: height / 10,
        width: width / 2,
        
      )
    );
  }
}