import 'package:freezed_annotation/freezed_annotation.dart';

part 'property.freezed.dart';
part 'property.g.dart';

@freezed
class Property with _$Property {
  const factory Property({
    @JsonKey(name: 'AantalBadkamers') required int aantalBadkamers,
    @JsonKey(name: 'AantalKamers') required int aantalKamers,
    @JsonKey(name: 'AantalWoonlagen') required String aantalWoonlagen,
    @JsonKey(name: 'Adres') required String adres,
    @JsonKey(name: 'Bouwjaar') required String bouwjaar,
    @JsonKey(name: 'Bouwvorm') required String bouwvorm,
    @JsonKey(name: 'Isolatie') required String isolatie,
    @JsonKey(name: 'Cv') String? cv,
    @JsonKey(name: 'Makelaar') required String makelaar,
    @JsonKey(name: 'MakelaarTelefoon') required String makelaarTelefoon,
    @JsonKey(name: 'VolledigeOmschrijving') required String volledigeOmschrijving,
    @JsonKey(name: 'Energielabel') required Energielabel energielabel,
    @JsonKey(name: 'WoonOppervlakte') required int woonOppervlakte,
    @JsonKey(name: 'PerceelOppervlakte') int? perceelOppervlakte,
    @JsonKey(name: 'KoopPrijs') required int koopPrijs,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) => _$PropertyFromJson(json);
}

@freezed
class Energielabel with _$Energielabel {
    const factory Energielabel({
        @JsonKey(name: 'Label') required String label,
    }) = _Energielabel;

    factory Energielabel.fromJson(Map<String, dynamic> json) => _$EnergielabelFromJson(json);
}