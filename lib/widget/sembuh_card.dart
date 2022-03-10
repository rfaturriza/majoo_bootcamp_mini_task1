import 'package:flutter/material.dart';
import 'package:majoo_day3/widget/core/card_widget.dart';

class SembuhCard extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final double? height;
  final double? width;
  const SembuhCard({Key? key, required this.padding, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: width,
        height: height,
        child: CardCustom(
          titleLabel: 'Sembuh',
          subtitleLabel: '4,736,234',
          captionLabel: '61,361',
          emoji: '😄',
          colorText: Colors.green[800],
          color: Colors.green[200],
        ),
      ),
    );
  }
}
