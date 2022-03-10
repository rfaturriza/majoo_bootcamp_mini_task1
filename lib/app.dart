import 'package:flutter/material.dart';
import 'package:majoo_day3/landscape_view.dart';
import 'package:majoo_day3/potrait_view.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 480) {
          return const LandscapeView();
        }
        return const PotraitView();
      },
    );
  }
}
