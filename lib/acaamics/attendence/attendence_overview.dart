import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendenceOverView extends StatefulWidget {
  const AttendenceOverView({Key? key}) : super(key: key);

  @override
  State<AttendenceOverView> createState() => _AttendenceOverViewState();
}

class _AttendenceOverViewState extends State<AttendenceOverView> {
  var className = "20CS4B";
  var totalStrength = "50";
  var Present = "45";
  var Absent = "3";
  var Od = "2";
  var title = "Total Strenght: ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(className.toString(),style: TextStyle(color: Colors.green),),
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Container( 
              padding: const EdgeInsets.only(left: 70),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,            
              child: Table(  
                           
                children: [
                  AttendenceRow("Total Strength", totalStrength),
                  AttendenceRow("No of Present", Present),
                  AttendenceRow("No of Absent", Absent),
                  AttendenceRow("No of OD", Od)
                  
                ],
              )
            ),
            
          ],
        ),
      ),
    );
  }

  TableRow AttendenceRow(title, count) {
    return TableRow(                   
                  children: [
                    TableCell(child: Text(title,style: GoogleFonts.ubuntu(fontSize: 20,fontWeight: FontWeight.bold ),)),
                    TableCell(child: Text(count,style: GoogleFonts.ubuntu(fontSize: 20,fontWeight: FontWeight.w500),))
                  ]
                );
  }
}