import 'package:flutter/material.dart';
//untuk memanggil body yang ingin di tampilkan//
import 'baris_kolom_widget.dart';

void main() {
 runApp(const MyApp());
 }

 class MyApp extends StatelessWidget {
     const MyApp({Key? key}) : super(key: key);

   @override
      Widget build(BuildContext context) {
 return const MaterialApp(
      title: 'Klinik',
        home:ColumnRowWidget(),
      );
    }
  }
