import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:funda_assessment/data/helpers/datetime_serializer.dart';

part 'funda_data.freezed.dart';
part 'funda_data.g.dart';

@freezed
class FundaData with _$FundaData {
  const factory FundaData({
    @JsonKey(name: 'Metadata') required Metadata metadata,
    @JsonKey(name: 'Objects') required List<PropertySummary> properties,
    @JsonKey(name: 'Paging') required Paging paging,
    @JsonKey(name: 'TotaalAantalObjecten') required int totaalAantalObjecten,
  }) = _FundaData;

  factory FundaData.fromJson(Map<String, dynamic> json) => _$FundaDataFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata({
    @JsonKey(name: 'Titel') required String titel,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
}

@freezed
class PropertySummary with _$PropertySummary {
  const factory PropertySummary({
    @JsonKey(name: 'AantalKamers') required int aantalKamers,
    @JsonKey(name: 'Adres') required String adres,
    @JsonKey(name: 'FotoLarge') required String fotoLarge,
    @JsonKey(name: 'HeeftVideo') required bool heeftVideo,
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'IsVerkocht') required bool isVerkocht,
    @JsonKey(name: 'Perceeloppervlakte') @Default(0) int perceeloppervlakte,
    @JsonKey(name: 'Postcode') required String postcode,
    @JsonKey(name: 'Prijs') required Prijs prijs,
    @DateTimeSerializer() @JsonKey(name: 'PublicatieDatum') required DateTime publicatieDatum,
    @JsonKey(name: 'Woonoppervlakte') required int woonoppervlakte,
    @JsonKey(name: 'Woonplaats') required String woonplaats,
  }) = _PropertySummary;

  factory PropertySummary.fromJson(Map<String, dynamic> json) => _$PropertySummaryFromJson(json);
}

@freezed
class Paging with _$Paging {
  const factory Paging({
    @JsonKey(name: 'AantalPaginas') required int aantalPaginas,
    @JsonKey(name: 'HuidigePagina') required int huidigePagina,
  }) = _Paging;

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}

@freezed
class Prijs with _$Prijs {
  const factory Prijs({
    @JsonKey(name: 'Koopprijs') required int koopprijs,
  }) = _Prijs;

  factory Prijs.fromJson(Map<String, dynamic> json) => _$PrijsFromJson(json);
}
