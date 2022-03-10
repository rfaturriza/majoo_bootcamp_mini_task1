import 'package:flutter/material.dart';

class TextNote extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  const TextNote({Key? key, required this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
          'Note: Data harian Covid-19 biasanya update pada pukul sekitar 17.00 WIB',
          style: TextStyle(
            color: Colors.blueGrey[900],
            fontSize: 13 * MediaQuery.of(context).textScaleFactor,
          )),
    );
  }
}
