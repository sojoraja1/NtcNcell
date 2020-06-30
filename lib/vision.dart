import 'package:Url/call.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';

class Scanner extends StatefulWidget {
  @override
  _ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  int _cameraOcr = FlutterMobileVision.CAMERA_BACK;
  String _textValue = "sample";
  bool showButton = false;

  Future<Null> _read() async {
    List<OcrText> texts = [];
    try {
      texts = await FlutterMobileVision.read(
        camera: _cameraOcr,
        waitTap: true,
      );

      setState(() {
        showButton = true;
        _textValue = texts[0].value;
      });
    } on Exception {
      texts.add(new OcrText('Failed to recognize text.'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(_textValue),
        showButton
            ? RaisedButton(
                onPressed: () {
                  callNumber('*102*' + _textValue);
                },
                child: Text("tap to rechare"),
              )
            : new RaisedButton(
                onPressed: _read,
                child: new Text('Start Scanning'),
              ),
      ],
    );
  }
}
