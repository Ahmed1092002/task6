import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:patient/Screans/Patient_Account.dart';
import 'package:patient/utils/Nafigator.dart';
String now = DateFormat("Hm").format(DateTime.now());
class PatientTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Card(
     semanticContainer: true,

     color: Colors.transparent,
     elevation: 0,
     child:ElevatedButton(onPressed: (){
navigateToScreen(context, Patient());
     },

style: ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
elevation: 1,

fixedSize: Size(370, 50),


),
         child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text("Name",style: TextStyle(color: Color(0xFF636363)),),
                 Row(
                   children: [
                     Icon(Icons.alarm,color: Color(0xFF919191),),
                     SizedBox(width:5 ,),
                     Text(now,style: TextStyle(color: Color(0xFF636363),),),

                   ],
                 )
               ],
             ),
             Icon(Ionicons.checkmark_done_outline,color: Color(0xFF18A7D1),size:30,)


           ],


         )


     )


   );
  }
  
}

List<Widget> buildWidgets(int count) {
  List<Widget> widgets = [];
  for (int i = 0; i < count; i++) {

    widgets.add(
      PatientTitle()
    );
  }
  return widgets;
}