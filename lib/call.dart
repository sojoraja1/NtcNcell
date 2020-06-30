import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

callNumber(String number) async {
  //set the number here
  bool res = await FlutterPhoneDirectCaller.callNumber(number);
}
