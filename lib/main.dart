import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  //void main() { is the main function, the entry point of the program. It is where the execution starts.
  runApp(MyApp()); //runs the app
}

//our own widget
class MyApp extends StatelessWidget {
  //MyApp is a stateless widget, which means it does not have any mutable state. It is a simple widget that displays a text.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //build method is called when the widget is built. It returns a widget that is displayed on the screen.
    return const MaterialApp(
      home: CurrencyConverterMaterialPage()
      );
  }
}
