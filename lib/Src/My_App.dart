import 'package:flutter/material.dart';
import 'package:patient/Screans/Main_Screan.dart';
import 'package:patient/Screans/My_Account.dart';
import 'package:patient/Screans/Patient_Account.dart';

import '../Componant/Drawer.dart';

class MyApp extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner:false,
      home:MainScrean()
    );
  }
}
