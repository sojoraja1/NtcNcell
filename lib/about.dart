import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Text(
                  "Developer Detail",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120,
          ),
          AutoSizeText.rich(
              TextSpan(text: "Sundar Gautam", style: TextStyle(fontSize: 24))),
          CircleAvatar(
            child: Image(
              image: AssetImage('images/me.png'),
              fit: BoxFit.cover,
            ),
            minRadius: 40.0,
          )
        ],
      ),
    );
  }
}
