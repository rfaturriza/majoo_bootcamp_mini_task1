import 'package:flutter/material.dart';
import 'package:majoo_day3/widget/aktif_card.dart';
import 'package:majoo_day3/widget/core/card_widget.dart';
import 'package:majoo_day3/widget/header_body.dart';
import 'package:majoo_day3/widget/meninggal_card.dart';
import 'package:majoo_day3/widget/sembuh_card.dart';
import 'package:majoo_day3/widget/text_note.dart';

class PotraitView extends StatelessWidget {
  const PotraitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _height = _mediaQuery.size.height;
    final _finalHeight =
        _height - _mediaQuery.padding.top - _mediaQuery.padding.bottom;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: _finalHeight,
          ),
          SizedBox(height: _finalHeight * 0.4, child: const _Header()),
          Positioned(
            top: _finalHeight * 0.3,
            left: 0,
            right: 0,
            child: SizedBox(
                height: _finalHeight * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    _AktifCard(),
                    _SembuhCard(),
                    _MeninggalCard(),
                    _TextNote()
                  ],
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[300],
        onPressed: () {},
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: _mediaQuery.size.width,
        height: _mediaQuery.size.height * 0.3,
        decoration: BoxDecoration(
          color: Colors.indigo[200],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: const HeaderBody(),
      ),
    );
  }
}

class _AktifCard extends StatelessWidget {
  const _AktifCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AktifCard(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
    );
  }
}

class _SembuhCard extends StatelessWidget {
  const _SembuhCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SembuhCard(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
    );
  }
}

class _MeninggalCard extends StatelessWidget {
  const _MeninggalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MeninggalCard(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: MediaQuery.of(context).size.width);
  }
}

class _TextNote extends StatelessWidget {
  const _TextNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextNote(padding: const EdgeInsets.symmetric(horizontal: 30.0));
  }
}
