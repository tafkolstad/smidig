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
    imageUrl: 'stranda.png',
    plass: 'Stranda',
    title: 'Roaldshornet',
    vongside: 'Høyreside',
    minutterTil: '16 min',
  ),
  Oppkommende(
    imageUrl: 'fjord2.png',
    plass: 'Fjord',
    title: 'Utsikt',
    vongside: 'Høyreside',
    minutterTil: '23 min',
  ),
  Oppkommende(
    imageUrl: 'by.png',
    plass: 'By',
    title: 'Sentrum',
    vongside: 'Høyreside',
    minutterTil: '31 min',
  ),
  Oppkommende(
    imageUrl: 'stranda.png',
    plass: 'Stranda',
    title: 'Roaldshornet',
    vongside: 'Høyreside',
    minutterTil: '45 min',
  ),
  Oppkommende(
    imageUrl: 'fjord2.png',
    plass: 'Fjord',
    title: 'Utsikt',
    vongside: 'Høyreside',
    minutterTil: '42 min',
  ),
  Oppkommende(
    imageUrl: 'by.png',
    plass: 'By',
    title: 'Sentrum',
    vongside: 'Høyreside',
    minutterTil: '66 min',
  ),
];
