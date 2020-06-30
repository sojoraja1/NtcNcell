import 'package:Url/vision.dart';
import 'package:flutter/material.dart';
import './options.dart';

class CommonUI {
  String balance, cutomerCare, datapack, voice, hospital, developer;
  CommonUI(
      {this.balance,
      this.cutomerCare,
      this.datapack,
      this.voice,
      this.hospital,
      this.developer});

  Widget commonUI(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Scanner(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                My.commonlyUsed(this.balance, "balance"),
                My.commonlyUsed(this.cutomerCare, "CustomerCare"),
                My.commonlyUsed(this.datapack, "DataPack"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                My.commonlyUsed(this.voice, "voice"),
                My.commonlyUsed(this.hospital, "Hospital"),
                My.commonlyUsed(this.developer, "Developer"),
              ],
            ),
          ],
        ));
  }
}
