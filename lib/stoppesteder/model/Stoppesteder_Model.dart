class Destinasjon {
  int stopnumber;
  int tid;
  String stoppested;
  Destinasjon({
    this.stopnumber,
    this.tid,
    this.stoppested,
  });
}

List<Destinasjon> destinasjoner = [
  Destinasjon(tid: 1591365720000, stoppested: 'Oslo S', stopnumber: 0),
  Destinasjon(tid: 1591366320000, stoppested: 'Lillestrøm S', stopnumber: 1),
  Destinasjon(tid: 1591367160000, stoppested: 'Oslo Lufthavn', stopnumber: 2),
  Destinasjon(tid: 1591370340000, stoppested: 'Hamar S', stopnumber: 3),
  Destinasjon(tid: 1591373340000, stoppested: 'Lillehammer S', stopnumber: 4),
  Destinasjon(tid: 1591374060000, stoppested: 'Hunderfossen', stopnumber: 5),
  Destinasjon(tid: 1591375980000, stoppested: 'Ringbu S', stopnumber: 6),
  Destinasjon(tid: 1591377540000, stoppested: 'Vinstra s', stopnumber: 7),
  Destinasjon(tid: 1591378860000, stoppested: 'Otta s', stopnumber: 8),
  Destinasjon(tid: 1591382100000, stoppested: 'Dombås', stopnumber: 9),
  Destinasjon(tid: 1591382100000, stoppested: 'Hjerkinn', stopnumber: 10),
  Destinasjon(tid: 1591382580000, stoppested: 'Kongsvoll', stopnumber: 11),
  Destinasjon(tid: 1591384080000, stoppested: 'Oppdal S', stopnumber: 12),
  Destinasjon(tid: 1591385700000, stoppested: 'Berkåk', stopnumber: 13),
  Destinasjon(tid: 1591387320000, stoppested: 'Støren', stopnumber: 14),
  Destinasjon(tid: 1591389180000, stoppested: 'Heimdal S', stopnumber: 15),
  Destinasjon(tid: 1591390080000, stoppested: 'Trondheim S', stopnumber: 16),
];
