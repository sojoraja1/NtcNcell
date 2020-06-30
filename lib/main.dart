import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';
import 'commonui.dart';
import 'call.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Recharge and Balance checker'),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 39),
                  child: Container(
                    child: Center(
                      child: Text(
                        "Choose your simCard",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    color: Colors.blue,
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => Ntc()));
                        },
                        child: Container(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.network(
                                'https://ictframe.com/wp-content/uploads/Ntc-resumes-international-data-roaming-service.jpg'),
                          ),
                          height: MediaQuery.of(context).size.height - 400,
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => Ncell()));
                        },
                        child: Container(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.network(
                                'https://en.setopati.com/wp-content/uploads/2019/05/1552825372Ncell_Main_Logo_1.jpg'),
                          ),
                          height: MediaQuery.of(context).size.height - 400,
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}

class Ncell extends StatefulWidget {
  Ncell({Key key}) : super(key: key);

  @override
  _NcellState createState() => _NcellState();
}

class _NcellState extends State<Ncell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ncell'),
      ),
      body: CommonUI(
              balance: '*901#',
              cutomerCare: '9005',
              datapack: '*17123#',
              hospital: '023584912',
              voice: '*17118#')
          .commonUI(context),
    );
  }
}

class Ntc extends StatefulWidget {
  Ntc({Key key}) : super(key: key);

  @override
  _NtcState createState() => _NtcState();
}

class _NtcState extends State<Ntc> {
  callNumber(String number) async {
    //set the number here
    bool res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ntc'),
      ),
      body: CommonUI(
              balance: '*400#',
              cutomerCare: '1415',
              datapack: '*1415#',
              hospital: '023584912',
              voice: '*1415#',
              developer: '9824961070')
          .commonUI(context),
    );
  }
}
