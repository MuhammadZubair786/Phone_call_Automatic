import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:csvapp/NewApp.dart';
import 'package:csvapp/NewDialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:localstorage/localstorage.dart';

class CsvToList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CsvToListState();
  }
}

class CsvToListState extends State<CsvToList> {
  List<dynamic> employeeData = [];

  final LocalStorage storage = new LocalStorage('localstorage_app');

  var data = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<PlatformFile>? _paths;
  String? _extension = "csv";
  FileType _pickingType = FileType.custom;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final name = storage.getItem('info');
    final indexdata = storage.getItem('INDEX');

    print(name);
    if (name == null) {
      print("no file upload");
    } else {
      print(name[0]);
      setState(() {
        employeeData = name;
      });
      print("h" + employeeData.toString());

      if (employeeData.length == 0) {
        print("No any call");
      } else {
        print("user call");
        if (indexdata == employeeData.length) {
          print("no call");
        } else {
          storage.setItem("INDEX", indexdata + 1);

          Timer.periodic(Duration(seconds: 5), (data) {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => DialPad(employeeData[indexdata][3])));
          });
        }
        // Navigator.pushReplacement(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) =>
        //             DialPad(index + 1, employeeData[index + 1][3])));
//         Timer(Duration(seconds: 3), ()async {
//     //  await  FlutterPhoneDirectCaller.callNumber(display);
//     // Navigator.pop(context);
//   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DialPad(index,employeeData[index + 1][3] )));
// });
      }

      //  openFile('data/user/0/com.example.csvapp/cache/file_picker/datacsv.cs');
    }
  }

  void fluttercall() async {
    print("ok");
    //  Navigator.push(context,
    //  MaterialPageRoute(builder: (context)=>DialPad(employeeData[1][3].toString())));

    // await FlutterPhoneDirectCaller.callNumber(employeeData[1][3].toString());
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
        appBar: AppBar(title: Text("CSV To List Task")),
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
                            child: Text(
                              "CSV To List",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: _openFileExplorer,
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Upload CSV SUCCESSFULLY",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: employeeData.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(employeeData[index][0].toString()),
                                    Text(employeeData[index][1].toString()),
                                    Text(employeeData[index][2].toString()),
                                    Text(employeeData[index][3].toString()),
                                  ],
                                ),
                                index == 0
                                    ? ElevatedButton(
                                        onPressed: () async {
                                          final name = storage.getItem('info');
                                          print(name);
                                          // launch(('tel://${employeeData[index][3]}'));
                                          // await FlutterPhoneDirectCaller.callNumber(employeeData[index][3].toString());
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) => DialPad(
                                          //             employeeData[1][3])));
                                        },
                                        child: Text("Start Calls"))
                                    : Text("")
                              ],
                            ),
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
    File f = new File(filepath);
    print("CSV to List");
    final input = f.openRead();
    final fields = await input
        .transform(utf8.decoder)
        .transform(new CsvToListConverter())
        .toList();
    print(fields[1][3]);
    //  fluttercall();

    setState(() {
      employeeData = fields;
      //  openFile(filepath);
    });
    var listdata = [];
    for (var i = 0; i < employeeData.length; i++) {
      var obj = [
        employeeData[i][0],
        employeeData[i][1],
        employeeData[i][2],
        employeeData[i][3]
      ];
      print(obj);
      listdata.add(obj);
    }

    print(listdata);
    final info = json.encode(employeeData);
    storage.setItem('info', listdata);

    // final info2 = json.encode(1);
    storage.setItem('INDEX', 1);

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
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print(ex);
    }
    if (!mounted) return;
    setState(() {
      openFile(_paths![0].path);

      data = 1;
      print(_paths);
      print("File path ${_paths![0]}");
      print(_paths!.first.extension);
    });
  }
}
