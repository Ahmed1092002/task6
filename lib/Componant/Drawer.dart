import 'package:flutter/material.dart';
import 'package:patient/Screans/Appointments.dart';
import 'package:patient/Screans/My_Account.dart';
import 'package:patient/utils/Nafigator.dart';

class DrawerContainer extends StatelessWidget {
  final int? selectedIndex;
  final Function(int)? onItemTapped;

  const DrawerContainer({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF15A7D1),
            ),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF15A7D1)),
              accountName: Text(
                "Ahmed Tamer",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("Ahmed@tamer.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                child: CircleAvatar(
                  radius: 500,
                  backgroundImage: AssetImage(
                      'Assets/357000840_2009728352712816_2803557023644478953_n.jpg'),
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('My Account'),
            selected: selectedIndex == 0,
            onTap: () {
              onItemTapped!(0);
              Navigator.pop(context);
              // Navigate to MyAccount screen
             navigateToScreen(context, MyAccount());
            },
          ),
          ListTile(
            title: const Text('Appoinment'),
            selected: selectedIndex == 1,
            onTap: () {
              onItemTapped!(1);
              Navigator.pop(context);
              // Navigate to Appointments screen
              navigateToScreen(context, Appointment());
            },
          ),
        ],
      ),
    );
  }
}

class Drawer_Componant extends StatefulWidget {
  const Drawer_Componant({Key? key, required this.title});

  final String title;

  @override
  State<Drawer_Componant> createState() => _Drawer_ComponantState();
}

class _Drawer_ComponantState extends State<Drawer_Componant> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = [
    // Define your widget options here
    // For example: HomeWidget(), BusinessWidget(), SchoolWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      endDrawer: DrawerContainer(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}