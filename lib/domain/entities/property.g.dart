// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Property _$$_PropertyFromJson(Map<String, dynamic> json) => _$_Property(
      aantalBadkamers: json['AantalBadkamers'] as int,
      aantalKamers: json['AantalKamers'] as int,
      aantalWoonlagen: json['AantalWoonlagen'] as String,
      adres: json['Adres'] as String,
      bouwjaar: json['Bouwjaar'] as String,
      bouwvorm: json['Bouwvorm'] as String,
      isolatie: json['Isolatie'] as String,
      cv: json['Cv'] as String?,
      makelaar: json['Makelaar'] as String,
      makelaarTelefoon: json['MakelaarTelefoon'] as String,
      volledigeOmschrijving: json['VolledigeOmschrijving'] as String,
      energielabel:
          Energielabel.fromJson(json['Energielabel'] as Map<String, dynamic>),
      woonOppervlakte: json['WoonOppervlakte'] as int,
      perceelOppervlakte: json['PerceelOppervlakte'] as int?,
      koopPrijs: json['KoopPrijs'] as int,
    );

Map<String, dynamic> _$$_PropertyToJson(_$_Property instance) =>
    <String, dynamic>{
      'AantalBadkamers': instance.aantalBadkamers,
      'AantalKamers': instance.aantalKamers,
      'AantalWoonlagen': instance.aantalWoonlagen,
      'Adres': instance.adres,
      'Bouwjaar': instance.bouwjaar,
      'Bouwvorm': instance.bouwvorm,
      'Isolatie': instance.isolatie,
      'Cv': instance.cv,
      'Makelaar': instance.makelaar,
      'MakelaarTelefoon': instance.makelaarTelefoon,
      'VolledigeOmschrijving': instance.volledigeOmschrijving,
      'Energielabel': instance.energielabel,
      'WoonOppervlakte': instance.woonOppervlakte,
      'PerceelOppervlakte': instance.perceelOppervlakte,
      'KoopPrijs': instance.koopPrijs,
    };

_$_Energielabel _$$_EnergielabelFromJson(Map<String, dynamic> json) =>
    _$_Energielabel(
      label: json['Label'] as String,
    );

Map<String, dynamic> _$$_EnergielabelToJson(_$_Energielabel instance) =>
    <String, dynamic>{
      'Label': instance.label,
    };
