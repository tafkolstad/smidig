class Oppkommende {
  String imageUrl;
  String plass;
  String title;
  String vongside;
  String minutterTil;

  Oppkommende({
    this.imageUrl,
    this.plass,
    this.title,
    this.vongside,
    this.minutterTil,
  });
}

List<Oppkommende> oppkommer = [
  Oppkommende(
    imageUrl: 'assets/stranda.png',
    plass: 'sadasd',
    title: 'testing',
    vongside: 'Høyreside',
    minutterTil: '16 min',
  ),
  Oppkommende(
    imageUrl: 'assets/fjord2.png',
    plass: 'hthttr',
    title: 'testing',
    vongside: 'Høyreside',
    minutterTil: '23 min',
  ),
  Oppkommende(
    imageUrl: 'assets/by.png',
    plass: 'By vvdvdf',
    title: 'testing',
    vongside: 'Høyreside',
    minutterTil: '31 min',
  ),
  Oppkommende(
    imageUrl: 'assets/stranda.png',
    plass: 'Stranda',
    title: 'testing',
    vongside: 'Høyreside',
    minutterTil: '45 min',
  ),
  Oppkommende(
    imageUrl: 'assets/fjord2.png',
    plass: 'Fjorden',
    title: 'testing',
    vongside: 'Høyreside',
    minutterTil: '42 min',
  ),
  Oppkommende(
    imageUrl: 'assets/by.png',
    plass: 'By vvdvdf',
    title: 'testing',
    vongside: 'Høyreside',
    minutterTil: '66 min',
  ),
];