import 'package:flutter/material.dart';

class PatientIconAndName extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
Image.asset('Assets/img.png'),

        Column(
          children: [
            Text('Name' ,style: TextStyle(color: Colors.black,fontSize: 30),),
            ElevatedButton(onPressed: (){},

                style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF36BEDE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )
                ),
                child: Text('Medical Histor' ,style: TextStyle(color: Colors.white),),

            )
          ],
        ),
      ],
    );
  }
}