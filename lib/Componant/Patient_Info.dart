import 'package:flutter/material.dart';

class PatientInfo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 320,

      child: Flex(
direction: Axis.vertical,
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

crossAxisAlignment: CrossAxisAlignment.start,


        children: [



          Row(


             children: [

               Icon(Icons.alarm,size: 30,color: Color(0xFF919191),),
               SizedBox(width: 30,),
               Text('08:00 - 0.9:30',style:TextStyle(fontSize: 20,color: Color(0xFFA2A2A2)) ),
               Spacer(flex: 1,),
             ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone_android,size: 30,color: Color(0xFF919191)),
              SizedBox(width: 30,),
              Text('123456789',style:TextStyle(fontSize: 20,color: Color(0xFF35BEDE)) ),
              Spacer(flex: 1,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on,size: 30,color: Color(0xFF919191),),
              SizedBox(width: 27,),
              Text('48 Tarin Streat, Building 51 \n Apartment 02 ,Berasov',style:TextStyle(fontSize: 20,color: Color(0xFFA2A2A2))) ,
              Spacer(flex: 1,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(Icons.description,size: 30,  color: Color(0xFF919191),),
            SizedBox(width: 30,),
              Text('48 Tarin Streat, Building 51 \n Apartment 02 ,Berasov',style:TextStyle(fontSize: 20,color: Color(0xFF35BEDE)) ,),
              Spacer(flex: 1,),
            ],
          ),
          SizedBox(height: 10,),


        ],
      ),
    );
  }
}