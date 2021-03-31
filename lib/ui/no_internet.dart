import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/no_disconnect.png"),
              ),
            ),
          ),
          Text(
            "No Internet Connection, Please check your connection.",
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
