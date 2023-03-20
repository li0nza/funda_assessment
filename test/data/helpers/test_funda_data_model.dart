import 'package:funda_assessment/domain/entities/funda_data.dart';

abstract class TestFundaDataModel {
  static FundaData tFundaData = FundaData(
      metadata: const Metadata(
        titel: 'Huizen te koop in heel Nederland',
      ),
      properties: [
        PropertySummary(
            aantalKamers: 4,
            adres: 'Berkelstraat 15',
            fotoLarge: 'http://cloud.funda.nl/valentina_media/172/410/881_groot.jpg',
            heeftVideo: true,
            id: 'be375522-ffab-4110-9e4e-51ec12195a1a',
            isVerkocht: false,
            perceeloppervlakte: 131,
            postcode: '7442GE',
            prijs: const Prijs(
              koopprijs: 307000,
            ),
            publicatieDatum: DateTime.parse('2023-03-19 16:28:00.000'),
            woonoppervlakte: 94,
            woonplaats: 'Nijverdal'),
      ],
      paging: const Paging(aantalPaginas: 4262, huidigePagina: 0),
      totaalAantalObjecten: 63920);
}
