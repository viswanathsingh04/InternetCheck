import 'package:flutter/material.dart';

import 'base_page.dart';

class Second extends BasePage {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends BasePageState<Second> {

  @override
  Widget pageUI() {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(
            "Center Widget",
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            overflow: TextOverflow.fade,
          ),
        ),
      ),
    );
  }
}
