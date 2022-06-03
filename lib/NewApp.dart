import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:csvapp/NewDialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localstorage/localstorage.dart';

class NewData extends StatefulWidget {
  // const NewData({Key? key}) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  var number;
  // ignore: use_key_in_widget_constructors
  NewData(this.number);

  @override
  // ignore: no_logic_in_create_state
  State<NewData> createState() => _NewDataState(number);
}

class _NewDataState extends State<NewData> {
  // ignore: prefer_typing_uninitialized_variables
  var number;

  _NewDataState(this.number);
  List<dynamic> employeeData = [];
  final LocalStorage storage = LocalStorage('localstorage_app');
  var data = 0;
  List<PlatformFile>? _paths;
  final String? _extension = "csv";
  final FileType _pickingType = FileType.custom;

  @override
  // ignore: must_call_super
  void initState() {
    super.initState();
    final name = storage.getItem('info');
    // ignore: unused_local_variable
    final indexdata = storage.getItem('index');

    if (name == null) {
      // ignore: avoid_print
      // print("no file upload");
    } else {
      setState(() {
        employeeData = name;
      });
      if (number <= employeeData.length) {
        if (number > 1) {
          switch (number) {
            case 2:
              Data(2);
              break;
            case 3:
              Data(3);
              break;
            case 4:
              Data(4);
              break;
            case 5:
              Data(5);
              break;
            case 6:
              Data(6);
              break;
            case 7:
              Data(7);
              break;
            case 8:
              Data(8);
              break;
            case 9:
              Data(9);
              break;
            case 10:
              Data(10);
              break;
            case 11:
            Data(11);
            break;

            default:
              // ignore: avoid_print
              print("No call");
          }
        }
      }
    }
  }

  void Data(index) {
    print(index);
    if (index > employeeData.length) {
      print("no call");
    } else {
      // ignore: prefer_const_constructors
      Timer.periodic(Duration(seconds: 10), (data) {
        // Future.delayed(const Duration(seconds: 3), () {
        // Future.delayed(Duration(seconds: 3), () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DialPad(employeeData[index][3], index)));
      });
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("CSV To List Task")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    color: Colors.green,
                    height: 30,
                    child: data == 0
                        ? TextButton(
                            child: const Text(
                              "CSV To List",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: _openFileExplorer,
                          )
                        : const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Upload CSV SUCCESSFULLY",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: employeeData.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            index != 0
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          // Text(employeeData[index][0].toString()),
                                          // Text(employeeData[index][1].toString()),
                                          // Text(employeeData[index][2].toString()),
                                          Text("Contact No: " +
                                              employeeData[index][3]
                                                  .toString()),
                                        ],
                                      ),
                                      // index == 0
                                      //     ? ElevatedButton(
                                      //         onPressed: () async {
                                      //           final name = storage.getItem('info');
                                      //           print(name);
                                      //           // launch(('tel://${employeeData[index][3]}'));
                                      //           // await FlutterPhoneDirectCaller.callNumber(employeeData[index][3].toString());
                                      //         },
                                      //         child: Text("Start Calls"))
                                      //     : Text("")
                                    ],
                                  )
                                : const Text("")
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  openFile(filepath) async {
    File f = File(filepath);
    // print("CSV to List");
    final input = f.openRead();
    final fields = await input
        .transform(utf8.decoder)
        .transform(const CsvToListConverter())
        .toList();
    // print(fields[1][3]);
    //  fluttercall();

    setState(() {
      employeeData = fields;
      data = 1;
      //  openFile(filepath);
    });
    var listdata = [];
    for (var i = 0; i < employeeData.length; i++) {
      var obj = [
        employeeData[i][0],
        employeeData[i][1],
        employeeData[i][2],
        employeeData[i][3],
      ];
      // ignore: avoid_print
      // print(obj);
      listdata.add(obj);
    }

    // ignore: avoid_print
    // print(listdata);
    // ignore: unused_local_variable
    final info = json.encode(employeeData);
    storage.setItem('info', listdata);

    final info1 = json.encode(1);
    storage.setItem('index', 1);

    Data(number);

    // final info2 = json.encode(1);
    // storage.setItem('INDEX', 1);

    //    final info = json.encode({employeeData.toString()});
    // storage.setItem('info', info);

    // Map<String, dynamic> info1 = json.decode(storage.getItem('info'));

    // print(info1);

    //  SharedPreferences prefs = await SharedPreferences.getInstance();

    //  prefs.setString('apiToken',employeeData);
    //  await FlutterPhoneDirectCaller.callNumber(employeeData[1][3].toString());
    //  Navigator.push(context,
    //  MaterialPageRoute(builder: (context)=>DialPad(employeeData[1][3].toString())));
  }

  void _openFileExplorer() async {
    try {
      _paths = (await FilePicker.platform.pickFiles(
        type: _pickingType,
        allowMultiple: false,
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      // print("Unsupported operation" + e.toString());
    } catch (ex) {
      // print(ex);
    }
    if (!mounted) return;
    setState(() {
      openFile(_paths![0].path);

      data = 1;
      // print(_paths);
      // print("File path ${_paths![0]}");
      // print(_paths!.first.extension);
    });
  }
}
