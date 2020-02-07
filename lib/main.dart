import 'dart:io';

import 'package:delivery_app/blocs/change_layout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pages/dashboard_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChangeLayoutBloc>.value(
            value: ChangeLayoutBloc()),
      ],
      child: MaterialApp(
        title: 'Deliver',
        theme: ThemeData(
          brightness: Brightness.light,
            fontFamily: GoogleFonts.lato().fontFamily,
            primarySwatch: Colors.indigo,
            appBarTheme: AppBarTheme(color: Colors.indigo,elevation: Platform.isIOS ? 0 : 4)),
        home: DashboardPage(),
      ),
    );
  }
}
