import 'package:flutter/material.dart';

import 'package:patient/Componant/Drawer.dart';
import 'package:patient/Componant/List_of_Patient.dart';
import 'package:patient/Screans/Main_Screan.dart';

import 'package:patient/Screans/My_Account.dart';
import 'package:patient/utils/Nafigator.dart';
import 'package:intl/intl.dart';



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

class Appointment extends StatelessWidget {
  String now = DateFormat("EEEE , d MMM y").format(DateTime.now());
  String appTitle = 'Menu';

  @override
  Widget build(BuildContext context) {
    List<Widget> myWidgets = buildWidgets(5);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF18A7D1),
        title: Text('Appointments'),
        leading: Image.asset('Assets/Screenshot 2023-08-31 024817.png'),
        actions: [
          DrawerButton(),
        ],
      ),
    endDrawer:  DrawerContainer(
        selectedIndex: 0, // Provide the selected index value
        onItemTapped: (index) {
          if (index == 0) {
            navigateToScreen(context, MyAccount());
          } else if (index == 1) {
            navigateToScreen(context, Appointment());
          }
        },

      ),
      body: Center(
        child: Container(

          width: 370, // Set a fixed width or constraints
          height: 500,

          child: Column(

          children: [
            Text(now,style: TextStyle(color: Color(0xFF636363),fontSize: 30),),
          SizedBox(height: 90,),

            Expanded(

              child: ListView(

                scrollDirection: Axis.vertical,

                children: myWidgets,
              ),
            ),
            Card(
              semanticContainer: true,

              color: Colors.transparent,
              elevation: 0,
              child: ElevatedButton(onPressed: (){
                navigateToScreen(context, MainScrean());
              },
                  child:Text('Back',textAlign: TextAlign.center),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(130, 40),
                    backgroundColor: Color(0xFF36BEDE),
                  ) ),


            ),
          ],
          ),
        ),
      ),
    );
  }
}