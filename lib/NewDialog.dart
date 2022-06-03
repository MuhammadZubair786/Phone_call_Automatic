// ignore_for_file: must_be_immutable, avoid_unnecessary_containers

import 'dart:async';

import 'package:csvapp/NewApp.dart';
import 'package:csvapp/csvdata.dart';
import 'package:csvapp/main.dart';
import 'package:flutter/material.dart';
// import 'values/hexcolor.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:localstorage/localstorage.dart';

class DialPad extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var number;
  // ignore: prefer_typing_uninitialized_variables
  var ind;

  // ignore: use_key_in_widget_constructors
  DialPad(this.number, this.ind);

  @override
  // ignore: no_logic_in_create_state
  _DialPadState createState() => _DialPadState(number, ind);
}

class _DialPadState extends State<DialPad> {
  // ignore: prefer_typing_uninitialized_variables
  var number;
  // ignore: prefer_typing_uninitialized_variables
  var ind;
  _DialPadState(this.number, this.ind);
  String display = " ";
  final LocalStorage storage = LocalStorage('localstorage_app');
  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    final name = storage.getItem('info');
    print(name.length);

    // var chk1;
    // for (var i = 1; i <= ind; i++) {
    //   var chk = storage.getItem('index' + i.toString());
    //   if (chk == null) {
    //       if (ind == 1) {
    //     print("Contact No:" +
    //         number.toString() +
    //         "Index NUMBER" +
    //         ind.toString());
    //     storage.setItem('index1', ind.toString());
    //     var res = FlutterPhoneDirectCaller.callNumber(number.toString());
    //   }

    //   }
    // }
    var chk1 = storage.getItem('index1');
    var chk2 = storage.getItem('index2');
    var chk3 = storage.getItem('index3');
    var chk4 = storage.getItem('index4');
    var chk5 = storage.getItem('index5');
    var chk6 = storage.getItem('index5');
    var chk7 = storage.getItem('index5');
    var chk8 = storage.getItem('index5');
    var chk9 = storage.getItem('index5');
    var chk10 = storage.getItem('index5');
    var chk11 = storage.getItem('index5');
    var chk12 = storage.getItem('index5');
    var chk13 = storage.getItem('index5');
    var chk14 = storage.getItem('index5');
    var chk15 = storage.getItem('index5');
    var chk16 = storage.getItem('index5');
    var chk17 = storage.getItem('index5');
    var chk18 = storage.getItem('index5');
    var chk19 = storage.getItem('index5');
    var chk20 = storage.getItem('index5');

    if (chk1 == null) {
      if (ind == 1) {
        print("Contact No:" +
            number.toString() +
            "Index NUMBER" +
            ind.toString());
        storage.setItem('index1', ind.toString());
        var res = FlutterPhoneDirectCaller.callNumber(number.toString());
    
      } else {
        print("Chck");
      }
    } else {
      if (chk2 == null) {
        if (ind == 2) {
          print("Contact No:" +
              number.toString() +
              "Index NUMBER" +
              ind.toString());
          storage.setItem('index2', ind.toString());
          var res = FlutterPhoneDirectCaller.callNumber(number.toString());
        }
      } else {
        if (chk3 == null) {
          if (ind == 3) {
            print("Contact No:" +
                number.toString() +
                "Index NUMBER" +
                ind.toString());
            storage.setItem('index3', ind.toString());
            var res = FlutterPhoneDirectCaller.callNumber(number.toString());
          }
        } else {
          if (chk4 == null) {
            if (ind == 4) {
              print("Contact No:" +
                  number.toString() +
                  "Index NUMBER" +
                  ind.toString());
              storage.setItem('index4', ind.toString());
              var res = FlutterPhoneDirectCaller.callNumber(number.toString());
            }
          } else {
            if (chk5 == null) {
              if (ind == 5) {
                print("Contact No:" +
                    number.toString() +
                    "Index NUMBER" +
                    ind.toString());
                storage.setItem('index5', ind.toString());
                var res =
                    FlutterPhoneDirectCaller.callNumber(number.toString());
              }
            } else {
              if (chk6 == null) {
                if (ind == 6) {
                  print("Contact No:" +
                      number.toString() +
                      "Index NUMBER" +
                      ind.toString());
                  storage.setItem('index6', ind.toString());
                  var res =
                      FlutterPhoneDirectCaller.callNumber(number.toString());
                }
              } else {
                if (chk7 == null) {
                  if (ind == 7) {
                    print("Contact No:" +
                        number.toString() +
                        "Index NUMBER" +
                        ind.toString());
                    storage.setItem('index7', ind.toString());
                    var res =
                        FlutterPhoneDirectCaller.callNumber(number.toString());
                  }
                } else {
                  if (chk8 == null) {
                    if (ind == 8) {
                      print("Contact No:" +
                          number.toString() +
                          "Index NUMBER" +
                          ind.toString());
                      storage.setItem('index8', ind.toString());
                      var res = FlutterPhoneDirectCaller.callNumber(
                          number.toString());
                    }
                  } else {
                    if (chk9 == null) {
                      if (ind == 9) {
                        print("Contact No:" +
                            number.toString() +
                            "Index NUMBER" +
                            ind.toString());
                        storage.setItem('index9', ind.toString());
                        var res = FlutterPhoneDirectCaller.callNumber(
                            number.toString());
                      }
                    } else {
                      if (chk10 == null) {
                        if (ind == 10) {
                          print("Contact No:" +
                              number.toString() +
                              "Index NUMBER" +
                              ind.toString());
                          storage.setItem('index10', ind.toString());
                          var res = FlutterPhoneDirectCaller.callNumber(
                              number.toString());
                        }
                      } else {
                        if (chk11 == null) {
                          if (ind == 11) {
                            print("Contact No:" +
                                number.toString() +
                                "Index NUMBER" +
                                ind.toString());
                            storage.setItem('index11', ind.toString());
                            var res = FlutterPhoneDirectCaller.callNumber(
                                number.toString());
                          }
                        } else {
                          if (chk12 == null) {
                            if (ind == 12) {
                              print("Contact No:" +
                                  number.toString() +
                                  "Index NUMBER" +
                                  ind.toString());
                              storage.setItem('index12', ind.toString());
                              var res = FlutterPhoneDirectCaller.callNumber(
                                  number.toString());
                            }
                          } else {
                            if (chk13 == null) {
                              if (ind == 13) {
                                print("Contact No:" +
                                    number.toString() +
                                    "Index NUMBER" +
                                    ind.toString());
                                storage.setItem('index13', ind.toString());
                                var res = FlutterPhoneDirectCaller.callNumber(
                                    number.toString());
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    setState(() {
      display = number.toString();
    });

    call();
  }

  void call() async {
    // ignore: avoid_print
    // print("call function");

    // var res = await FlutterPhoneDirectCaller.callNumber(number.toString());

    // ignore: avoid_print
    // print(res);
    if (ind > 5) {
      print("no call completer");
    } else {
      Timer.periodic(const Duration(seconds: 10), (data) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewData(++ind)));
        // Navigator.pop(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const ListTile(
          // leading: Icon(
          //   Icons.home,
          //   size: 40,
          // ),
          // trailing: Icon(
          //   Icons.person_outline,
          //   size: 40,
          // ),
          ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    display,
                    textScaleFactor: 1.0,
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // ignore: sized_box_for_whitespace
                trailing: Container(
                  width: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.person_add,
                          size: 35,
                          color: Color(0xff4a90e2),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // ignore: prefer_is_empty
                          if (display.length != 0) {
                            setState(() {
                              display =
                                  display.substring(0, display.length - 1);
                            });
                          }
                        },
                        child: const Icon(
                          Icons.backspace,
                          size: 35,
                          color: Color(0xffec4055),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Row(
                children: [
                  dialPadButton(size, '1'),
                  dialPadButton(size, '2'),
                  dialPadButton(size, '3')
                ],
              ),
              Row(
                children: [
                  dialPadButton(size, '4'),
                  dialPadButton(size, '5'),
                  dialPadButton(size, '6')
                ],
              ),
              Row(
                children: [
                  dialPadButton(size, '7'),
                  dialPadButton(size, '8'),
                  dialPadButton(size, '9')
                ],
              ),
              Row(
                children: [
                  dialPadButton(
                    size,
                    '*',
                    color: const Color(0xff999999),
                  ),
                  dialPadButton(size, '0'),
                  dialPadButton(
                    size,
                    '#',
                    color: const Color(0xff999999),
                  )
                ],
              ),
              InkWell(
                child: Container(
                  height: 80,
                  width: double.infinity,
                  color: const Color(0xff2d79e6),
                  child: const Center(
                    // ignore: unnecessary_const
                    child: const Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                onTap: () async {
                  FlutterPhoneDirectCaller.callNumber(display);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget dialPadButton(Size size, String value, {Color? color}) {
    return InkWell(
      highlightColor: Colors.black45,
      onTap: () {
        setState(() {
          display = display + value;
        });
      },
      child: Container(
        height: size.height * 0.15,
        width: size.width * 0.33,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 0.025)),
        child: Center(
          child: Text(
            value,
            textScaleFactor: 1.0,
            style: const TextStyle(
                color: Color(0xff5798e4),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
