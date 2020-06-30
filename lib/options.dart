import 'package:flutter/material.dart';
import 'call.dart';
import 'package:auto_size_text/auto_size_text.dart';

class My {
  static Widget commonlyUsed(String phone, String description) {
    return Expanded(
      child: Container(
        child: Card(
          child: FlatButton(
              onPressed: () {
                print(phone);
                callNumber(phone);
              },
              color: Colors.blue,
              child: AutoSizeText(
                '$description',
                style: TextStyle(fontSize: 15),
                maxLines: 1,
              )),
        ),
        height: 80,
        width: 50,
      ),
    );
  }
}
