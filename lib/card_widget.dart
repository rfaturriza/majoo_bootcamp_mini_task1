import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final Color? color;
  final Color? colorText;
  final String? emoji;
  final String? titleLabel;
  final String? subtitleLabel;
  final String? captionLabel;

  const CardCustom(
      {Key? key,
      this.color,
      this.titleLabel,
      this.subtitleLabel,
      this.captionLabel,
      this.colorText,
      this.emoji})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                child: Text(emoji ?? '',
                    style: TextStyle(
                      fontSize: 30 * _mediaQuery.textScaleFactor,
                    ))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleLabel ?? '',
                    style: TextStyle(
                        fontSize: 15 * _mediaQuery.textScaleFactor,
                        color: colorText,
                        fontWeight: FontWeight.w900)),
                Text(subtitleLabel ?? '',
                    style: TextStyle(
                        fontSize: 40 * _mediaQuery.textScaleFactor,
                        color: colorText,
                        fontWeight: FontWeight.w900)),
                Row(
                  children: [
                    Text(captionLabel ?? '',
                        style: TextStyle(
                            fontSize: 20 * _mediaQuery.textScaleFactor,
                            color: colorText,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.arrow_upward,
                      color: colorText,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
