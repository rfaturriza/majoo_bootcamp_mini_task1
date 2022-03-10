import 'package:flutter/material.dart';

import 'core/card_widget.dart';

class AktifCard extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final double? height;
  final double? width;
  const AktifCard({Key? key, required this.padding, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: width,
        height: height,
        child: CardCustom(
          titleLabel: 'Kasus aktif',
          subtitleLabel: '5,457,775',
          captionLabel: '49,447',
          emoji: '🤒',
          colorText: Colors.brown,
          color: Colors.orange[200],
        ),
      ),
    );
  }
}
