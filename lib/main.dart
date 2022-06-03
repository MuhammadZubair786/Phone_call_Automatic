import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:csvapp/NewApp.dart';
import 'package:csvapp/NewDialog.dart';
import 'package:csvapp/Newcall.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:localstorage/localstorage.dart';

void main() {
  runApp(NewApp());
}

class NewApp extends StatefulWidget {
  const NewApp({ Key? key }) : super(key: key);

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:NewData(1),
      ),
      
    );
  }
}

