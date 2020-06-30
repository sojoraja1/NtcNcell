import 'package:Url/about.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'commonui.dart';

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
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return About();
                  }));
                },
                icon: Icon(Icons.person),
                label: Text("About us"))
          ],
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
                            child: Image.asset('images/ntc.jpg'),
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
                            child: Image.asset('images/ncell.jpg'),
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
