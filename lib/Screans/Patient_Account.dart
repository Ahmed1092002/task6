import 'package:flutter/material.dart';
import 'package:patient/Componant/Buttons.dart';
import 'package:patient/Componant/Drawer.dart';
import 'package:patient/Componant/Patient_IconAndName.dart';
import 'package:patient/Componant/Patient_Info.dart';
import 'package:patient/Screans/Appointments.dart';
import 'package:patient/Screans/My_Account.dart';
import 'package:patient/utils/Nafigator.dart';


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

class Patient extends StatelessWidget {
  String appTitle = 'Menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF18A7D1),
        title: Text('Patient'),
        leading: Image.asset('Assets/Screenshot 2023-08-31 024817.png'),
        actions: [
          DrawerButton(),
        ],
      ),
     endDrawer:  DrawerContainer(
        selectedIndex: 0, // Provide the selected index value
        onItemTapped: (index) {
          if (index == 0) {
            navigateToScreen(context,MyAccount());
          } else if (index == 1) {
            navigateToScreen(context,Appointment() );
          }
        },
      ),
      body: Center(
        child: Container(

width: 400,

          child: Column(

mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

PatientIconAndName(),
              PatientInfo(),
              Buttons()
            ],
          ),
        ),
      ),
    );
  }
}