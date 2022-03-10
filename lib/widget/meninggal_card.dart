import 'package:flutter/material.dart';
import 'package:majoo_day3/widget/core/card_widget.dart';

class MeninggalCard extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final double? height;
  final double? width;
  const MeninggalCard(
      {Key? key, required this.padding, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: width,
        height: height,
        child: CardCustom(
          titleLabel: 'Meninggal',
          subtitleLabel: '147,586',
          captionLabel: '244',
          emoji: '😥',
          colorText: Colors.red[800],
          color: Colors.red[200],
        ),
      ),
    );
  }
}
