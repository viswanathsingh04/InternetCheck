import 'package:flutter/material.dart';
import 'package:internetcheck/provider/connectivity_provider.dart';
import 'package:internetcheck/ui/no_internet.dart';
import 'package:provider/provider.dart';

class BasePage extends StatefulWidget {
  BasePage({Key key}) : super(key: key);

  @override
  BasePageState createState() => BasePageState();
}

class BasePageState<T extends StatefulWidget> extends State<T> {
  @override
  void initState() {
    super.initState();
    var check = Provider.of<ConnectivityProvider>(context, listen: false);
    check.startMonitoring();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ConnectivityProvider>(
        builder: (context, loaderModel, child) {
      return Scaffold(
        appBar: _buildAppbar(),
        body: loaderModel.isOnline ? pageUI() : NoInternet(),
      );
    });
  }

  Widget _buildAppbar() {
    return null;
  }

  Widget pageUI() {
    return null;
  }
}
