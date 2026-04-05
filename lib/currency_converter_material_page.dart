import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 3, 5, 0),
        width: 2,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
      borderRadius: BorderRadius.circular(12),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 252, 206),
      appBar: AppBar(
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Color.fromARGB(255, 65, 119, 2)),
        ),
        backgroundColor: const Color.fromARGB(255, 208, 251, 157),
        elevation: 0,
        centerTitle: true,
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 65, 119, 2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 65, 119, 2),
                ),
                decoration: InputDecoration(
                  hintText: 'Enter amount in USD',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 65, 119, 2),
                  ),
                  prefixIcon: const Icon(
                    Icons.monetization_on,
                    color: Color.fromARGB(255, 65, 119, 2),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 245, 250, 238),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 90;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 115, 201, 17),
                  foregroundColor: const Color.fromARGB(255, 221, 249, 200),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
  here is a example of a stateless widget
  import 'package:flutter/material.dart';
  class MyStatelessWidget extends StatelessWidget {
    const MyStatelessWidget({Key? key}) : super(key :key);

    @override
    Widget build(BuildContext context) {
      return const Scaffold(
        body: Center(
          child: Text('This is a stateless widget.'),
        ),
        );
    }
  }
  */