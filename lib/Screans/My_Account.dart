import 'package:flutter/material.dart';
import 'package:patient/Componant/Account_ImageAndName.dart';
import 'package:patient/Componant/Drawer.dart';
import 'package:patient/Componant/Patient_IconAndName.dart';
import 'package:patient/Screans/Appointments.dart';
import 'package:patient/Screans/Main_Screan.dart';
import 'package:patient/utils/Nafigator.dart';

import '../Componant/Account_Info.dart';


class DrawerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        );
      },
    );
  }
}

class MyAccount extends StatelessWidget {
  String appTitle = 'Menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF18A7D1),
        title: Text('My Account'),
        leading: Image.asset('Assets/Screenshot 2023-08-31 024817.png'),
        actions: [
          DrawerButton(),
        ],
      ),
     endDrawer:  DrawerContainer(
        selectedIndex: 0, // Provide the selected index value
        onItemTapped: (index) {
          // Handle the item tapped event
        },
      ),
      body: Center(
        child: Container(

          width: 400,
          height:600 ,

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
AccountIconAndName(),
              AccountInfo(),
              ElevatedButton(onPressed: (){
                navigateToScreen(context,MainScrean());
              },
                  child:Text('Back',textAlign: TextAlign.center),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(130, 40),
                    backgroundColor: Color(0xFF36BEDE),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}