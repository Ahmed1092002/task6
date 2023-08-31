import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
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

class MainScrean extends StatelessWidget {
  String appTitle = 'Menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF18A7D1),
        title: Text('Main'),
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

          width: double.infinity, // Set a fixed width or constraints
          height: double.infinity,

          child: Column(
            children: [
              Card(
              semanticContainer: true,

              color: Colors.transparent,
              elevation: 0,
              child:ElevatedButton(onPressed: (){
                navigateToScreen(context, MyAccount());
              },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 1,

                    fixedSize: Size(370, 50),


                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    Text("My Account",style: TextStyle(color: Color(0xFF18A7D1),fontSize: 20),),
                      Icon(Ionicons.person,color: Color(0xFF18A7D1),size:30,)


                    ],


                  )


              )


          ),
              Card(
                  semanticContainer: true,

                  color: Colors.transparent,
                  elevation: 0,
                  child:ElevatedButton(onPressed: (){
                    navigateToScreen(context, Appointment());
                  },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 1,

                        fixedSize: Size(370, 50),


                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Appointments",style: TextStyle(color: Color(0xFF18A7D1),fontSize: 20),),
                          Icon(Icons.list,color: Color(0xFF18A7D1),size:30,)


                        ],


                      )


                  )


              ),
            ],

            ),
          ),
        ),

    );
  }
}