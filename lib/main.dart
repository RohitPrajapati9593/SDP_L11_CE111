import
'package:flutter/material.dart';
import 'package:lab_10/lab_11_1/loading.dart';
import 'package:lab_10/pages/choose_location.dart';
import 'package:lab_10/pages/home.dart';
void main() =>
    runApp(MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/location': (context) => ChooseLocation(),
        }
    ));
