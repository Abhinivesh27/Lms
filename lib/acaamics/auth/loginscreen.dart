import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var lable = "...";
    var hint = "...";
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,elevation: 0,),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.green,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                GlassContainer(
                blur: 5,
                opacity: 0.2,
                border: Border.fromBorderSide(BorderSide.none),
                borderRadius: BorderRadius.circular(10),
                shadowStrength: 10,
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width / 1.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginInput(hint: "username", lable: "Name"),
                    LoginInput(hint: "Password", lable: "Pass")
                  ],
                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginInput extends StatelessWidget {
  const LoginInput({
    Key? key,
    required this.hint,
    required this.lable,
  }) : super(key: key);

  final String hint;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 1.6,
      child: TextField(
        decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green.shade900,width: 3)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 3)),
                labelStyle: TextStyle(color: Colors.green.shade900),
                hintStyle: TextStyle(color: Colors.white38),
                hintText: hint,
                labelText: lable,
              ),
      )
    );
  }
}