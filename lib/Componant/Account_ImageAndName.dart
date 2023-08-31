import 'package:flutter/material.dart';

class AccountIconAndName extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
        radius: 50,
              backgroundImage:   AssetImage('Assets/357000840_2009728352712816_2803557023644478953_n.jpg') ,
            ),
SizedBox(height: 10,),
            Text('Ahmed Tamer' ,style: TextStyle(color: Colors.black,fontSize: 30),),
            Text('Hcp Name' ,style: TextStyle(color: Color(0xFFC7C7C7),fontSize: 20),),


          ],
        );

  }
}



// ElevatedButton(onPressed: (){},
//
// style: ElevatedButton.styleFrom(
// backgroundColor: Color(0xFF36BEDE),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(5.0),
// )
// ),
// child: Text('Medical Histor' ,style: TextStyle(color: Colors.white),),
//
// )