import 'package:flutter/material.dart';

import 'Item.dart';

List<Item> data = [
  Item(
      panelText: Text(
        'Hvor mye bagasje kan jeg ha med?'),
      expandedText: Text(
          'Du kan ta med deg inntil 30 kilo fordelt på maksimum 3 kolli. Har du mer enn dette og skal reise mellom Oslo og Voss/Bergen eller Trondheim, kan du benytte bagasjetransport. ')),
  /*child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text("hello world!"),
        )*/
  Item(
      panelText: Text('Kan jeg ha med kjæledyr?'),
      expandedText: Text(
          'Dyrene som får bli med på tog er hund, katt, gnagere i bur, burfugl og små skilpadder. Du kan ta med akvariefisk så lenge de er forsvarlig pakket. Andre dyr er ikke ønsket på toget. Eksempler på dyr som ikke er ønsket er insekter, edderkopper, krypdyr/reptiler og amfibier.')
      /*child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text("hello world!"),
        )*/
      ),
  Item(
    panelText: Text(
        'Hvordan bestiller jeg billett hvis jeg har spesielle behov for reisen?'),
    expandedText: Text(
        'Har du spesielle behov for togreisen, er det viktig at du bestiller billetten gjennom kundeservice eller på en betjent stasjon. Tjenester som rullestolplass og gratis plass for førerhund/servicehund kan i dag ikke bestilles på nettet, men funksjonshemmede får likevel tilbud om de ulike rabattene. For rullestolbrukere som ønsker å reise med Sove, har vi en bredere kupé. Denne kupeen må bestilles ved å kontakte kundeservice.'),
    /*child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text("hello world!"),
      )*/
  ),
  Item(
    panelText: Text('Hva skjer hvis jeg ikke rekker toget?'),
    expandedText: Text(
        'Enkeltbilletter er gyldig til angitt avgang, det vil si at du ikke kan benytte billetten på andre avganger. Du må dermed kjøpe en ny billett hvis du vil reise med neste avgang. Dersom du bruker Vy-appen til å kjøpe Ruter-billett, er det Ruters bestemmelser for gyldighetstid som gjelder.'),
    /* child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text("hello world!"),
      )*/
  ),
  Item(
    panelText: Text('Kan jeg reservere sete om bord?'),
    expandedText: Text(
        'På Bergensbanen, Nordlandsbanen, Dovrebanen, Raumabanen og Rørosbanen er setereservasjon inkludert i prisen. Du kan selv velge ønsket sete i et setekart som en del av ditt billettkjøp, med mindre du har kjøpt Lavpris hvor sete tildeles automatisk. Du kan også endre sete selv før avgang via Min side på vy.no.'),
    /*child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text("hello world!"),
      )*/
  ),
  Item(
    panelText: Text('Hvordan får jeg plass i Komfort-vognen?'),
    expandedText: Text(
        'Komfort selges som et tillegg til Flex og Flex Refunderbar-billetter på Nordlandsbanen og Dovrebanen for 100 kr per person. Du kan velge Komfort når du kjøper billetten i Vy-appen eller på vy.no. Du kan også kjøpe Komfort om bord av konduktøren, hvis det er ledig plass.'),
    /*child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text("hello world!"),
      )*/
  ),
  Item(
    panelText: Text('Hvordan får jeg plass i Sove-vognen?'),
    expandedText: Text(
        'Ved kjøp av Sove-billett får du plass i egen sovekupé. En sovekupé har to senger og kan benyttes av inntil fire personer, maks to voksne. Sove tilbys på strekningene Oslo–Trondheim, Oslo–Bergen og Trondheim–Bodø.'),
    /*child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text("hello world!"),
      )*/
  ),
  Item(
    panelText: Text('Har dere dyrefri sone for meg som er allergisk?'),
    expandedText: Text(
        'Togene våre har en dyrefri sone der det ikke er tillatt å ha med seg dyr.På tog med setereservasjon kan du reservere plass i dyrefri sone, mens på tog uten plassreservering finner du vogn merket med dyrefri-symbolet.'),
    /* child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text("hello world!"),
      )*/
  ),
  Item(
    panelText: Text('Tilbyr dere bagasjetransport?'),
    expandedText: Text(
        'Vy tilbyr ikke bagasjetransport. Skulle du ønske å benytte en slik tjeneste, ta kontakt med vår samarbeidspartner porterservice.no. Porterservice tilbyr trygg og sikker transport av bagasje på strekningene Oslo–Bergen og Oslo–Trondheim.'),
    /* child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text("OOOOOPpoopopopS!"),
      )*/
  ),
];
