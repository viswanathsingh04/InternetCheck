import 'package:flutter/material.dart';
import 'package:internetcheck/ui/second.dart';

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
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Second()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Go to Next Page",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                overflow: TextOverflow.fade,
              ),
            ),
          )
        ],
      ),
    );
  }
}
