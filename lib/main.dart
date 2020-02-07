import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/dashboard_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deliver',
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: DashboardPage(),
    );
  }
}
