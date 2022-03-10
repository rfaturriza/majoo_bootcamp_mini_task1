import 'package:flutter/material.dart';
import 'package:majoo_day3/card_widget.dart';

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
        child: Column(
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
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.refresh))),
          ],
        ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: SizedBox(
        width: _finalWidth * 0.55,
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

class _SembuhCard extends StatelessWidget {
  const _SembuhCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _width = _mediaQuery.size.width;
    final _appBar = AppBar();
    final _finalWidth = _width - _appBar.preferredSize.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: SizedBox(
        width: _finalWidth * 0.55,
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

class _MeninggalCard extends StatelessWidget {
  const _MeninggalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _width = _mediaQuery.size.width;
    final _appBar = AppBar();
    final _finalWidth = _width - _appBar.preferredSize.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: SizedBox(
        width: _finalWidth * 0.55,
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

class _TextNote extends StatelessWidget {
  const _TextNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Text(
          'Note: Data harian Covid-19 biasanya update pada pukul sekitar 17.00 WIB',
          style: TextStyle(
            color: Colors.blueGrey[900],
            fontSize: 13 * MediaQuery.of(context).textScaleFactor,
          )),
    );
  }
}
