import 'package:flutter/material.dart';

class HeaderBody extends StatelessWidget {
  const HeaderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Perkembangan COVID-19 Indonesia',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blueGrey[900],
              fontSize: 28 * _mediaQuery.textScaleFactor,
              fontWeight: FontWeight.w700,
            )),
        Text('Last update: ${DateTime.now().toString()}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blueGrey[900],
              fontSize: 15 * _mediaQuery.textScaleFactor,
            )),
        Align(
            alignment: Alignment.bottomRight,
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))),
      ],
    );
  }
}
