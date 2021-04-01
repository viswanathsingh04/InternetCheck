import 'package:flutter/material.dart';
import 'package:internetcheck/home.dart';
import 'package:internetcheck/provider/connectivity_provider.dart';
import 'package:internetcheck/ui/base_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ConnectivityProvider(),
          child: MyHomePage(
            title: 'Connectivity Check',
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => ConnectivityProvider(),
          child: BasePage(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Connectivity Check'),
      ),
    );
  }
}
