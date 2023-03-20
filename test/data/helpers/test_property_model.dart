import 'package:funda_assessment/domain/entities/property.dart';

abstract class TestPropertyModel {
  static const Property tPropertyModel = Property(
      aantalBadkamers: 1,
      aantalKamers: 4,
      aantalWoonlagen: '3 woonlagen',
      adres: 'Berkelstraat 15',
      bouwjaar: '2008',
      bouwvorm: 'bestaande bouw',
      isolatie: 'dakisolatie, dubbel glas, muurisolatie, vloerisolatie en volledig geïsoleerd',
      cv: 'Intergas (gas gestookt combiketel uit 2008, Eigendom)',
      makelaar: 'Piksen Makelaars',
      makelaarTelefoon: '0548-612861',
      volledigeOmschrijving:
          '''In een verkeersluwe woonstraat staat deze jong gebouwde instapklare MIDDENWONING met vrijstaande houten SCHUUR/BERGING en achterom. Deze comfortabele woning is goed onderhouden, volledig geïsoleerd en modern afgewerkt, waardoor het mogelijk is om zorgeloos je spullen uit te pakken en te verhuizen!Indeling:Begane grond: Entree/hal, woonkamer met trapkast/provisieruimte, open keuken met achterdeur, werkblad en kasten in hoekopstelling v.v. complete inbouwapparatuur, portaal met trapopgang, wandtoilet met fonteintje.1e verdieping: Overloop, woningbrede 'master bedroom' aan voorzijde, slaapkamer met tuimelvenster aan achterzijde, badkamer v.v. inloopdouche, wandtoilet, wastafelmeubel en tuimelvenster.2e verdieping: Middels vaste trap te bereiken, multifunctionele zolderruimte met tuimelvenster, volop bergruimte en aparte C.V.-ruimte.Bijzonderheden:• Bouwjaar 2008;• Woonoppervlakte 94 m², inhoud 338 m³;• Perceeloppervlakte 131 m²;• Volledig geïsoleerd (energielabel A!);• Vrijstaande houten berging;• Achterom;• Volop mogelijkheid voor openbaar parkeren in tweetal parkeerhofjes;• Met minimale aanpassingen potentieel 4 (slaap)kamers!''',
      energielabel: Energielabel(label: 'A'),
      woonOppervlakte: 94,
      perceelOppervlakte: 131,
      koopPrijs: 307000);
}
