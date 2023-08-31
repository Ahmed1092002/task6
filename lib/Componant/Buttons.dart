import 'package:flutter/material.dart';
import 'package:patient/Screans/Appointments.dart';
import 'package:patient/Screans/Patient_Account.dart';

import '../utils/Nafigator.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
width: 350,
     height: 200,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,

       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ElevatedButton(onPressed: (){},
                 child:Text('Start\nProceduers',textAlign: TextAlign.center),style: ElevatedButton.styleFrom(
                   fixedSize: Size(130, 40),
                   backgroundColor: Color(0xFF36BEDE),
                 ) ),
SizedBox(width: 30,),
             ElevatedButton(onPressed: (){},
                 child:Text('Edit',textAlign: TextAlign.center),
             style: ElevatedButton.styleFrom(
               fixedSize: Size(130, 40),
               backgroundColor: Color(0xFFCECECE),
             )),
           ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ElevatedButton(onPressed: (){
               navigateToScreen(context, Appointment());
             },
                 child:Text('Back',textAlign: TextAlign.center),style: ElevatedButton.styleFrom(
                   fixedSize: Size(130, 40),
                   backgroundColor: Color(0xFF36BEDE),
                 ) ),
             SizedBox(width: 30,),
             ElevatedButton(onPressed: (){},
                 child:Text('Pathint\nMissing',textAlign: TextAlign.center),
                 style: ElevatedButton.styleFrom(
                   fixedSize: Size(130, 40),
                   backgroundColor: Color(0xFF36BEDE),
                 )),
           ],
         ),

       ],
     ),


   );
  }

}