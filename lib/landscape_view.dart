import 'package:flutter/material.dart';
import 'package:majoo_day3/widget/aktif_card.dart';
import 'package:majoo_day3/widget/header_body.dart';
import 'package:majoo_day3/widget/meninggal_card.dart';
import 'package:majoo_day3/widget/sembuh_card.dart';
import 'package:majoo_day3/widget/text_note.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _Header(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  _AktifCard(),
                  _SembuhCard(),
                  _MeninggalCard(),
                  _TextNote()
                ],
              ),
            ),
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
    final _appBar = AppBar();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: _appBar.preferredSize.height),
        width: (_mediaQuery.size.width - _appBar.preferredSize.height) * 0.40,
        height: _mediaQuery.size.height,
        decoration: BoxDecoration(
          color: Colors.indigo[200],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
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
    final _mediaQuery = MediaQuery.of(context);
    final _width = _mediaQuery.size.width;
    final _appBar = AppBar();
    final _finalWidth = _width - _appBar.preferredSize.height;
    return AktifCard(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: _finalWidth * 0.55,
    );
  }
}

class _SembuhCard extends StatelessWidget {
  const _SembuhCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _width = _mediaQuery.size.width;
    final _appBar = AppBar();
    final _finalWidth = _width - _appBar.preferredSize.height;
    return SembuhCard(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: _finalWidth * 0.55,
    );
  }
}

class _MeninggalCard extends StatelessWidget {
  const _MeninggalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _width = _mediaQuery.size.width;
    final _appBar = AppBar();
    final _finalWidth = _width - _appBar.preferredSize.height;
    return MeninggalCard(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: _finalWidth * 0.55,
    );
  }
}

class _TextNote extends StatelessWidget {
  const _TextNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextNote(padding: EdgeInsets.symmetric(vertical: 15.0));
  }
}
