// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'funda_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FundaData _$$_FundaDataFromJson(Map<String, dynamic> json) => _$_FundaData(
      metadata: Metadata.fromJson(json['Metadata'] as Map<String, dynamic>),
      properties: (json['Objects'] as List<dynamic>)
          .map((e) => PropertySummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      paging: Paging.fromJson(json['Paging'] as Map<String, dynamic>),
      totaalAantalObjecten: json['TotaalAantalObjecten'] as int,
    );

Map<String, dynamic> _$$_FundaDataToJson(_$_FundaData instance) =>
    <String, dynamic>{
      'Metadata': instance.metadata,
      'Objects': instance.properties,
      'Paging': instance.paging,
      'TotaalAantalObjecten': instance.totaalAantalObjecten,
    };

_$_Metadata _$$_MetadataFromJson(Map<String, dynamic> json) => _$_Metadata(
      titel: json['Titel'] as String,
    );

Map<String, dynamic> _$$_MetadataToJson(_$_Metadata instance) =>
    <String, dynamic>{
      'Titel': instance.titel,
    };

_$_PropertySummary _$$_PropertySummaryFromJson(Map<String, dynamic> json) =>
    _$_PropertySummary(
      aantalKamers: json['AantalKamers'] as int,
      adres: json['Adres'] as String,
      fotoLarge: json['FotoLarge'] as String,
      heeftVideo: json['HeeftVideo'] as bool,
      id: json['Id'] as String,
      isVerkocht: json['IsVerkocht'] as bool,
      perceeloppervlakte: json['Perceeloppervlakte'] as int? ?? 0,
      postcode: json['Postcode'] as String,
      prijs: Prijs.fromJson(json['Prijs'] as Map<String, dynamic>),
      publicatieDatum: const DateTimeSerializer()
          .fromJson(json['PublicatieDatum'] as String),
      woonoppervlakte: json['Woonoppervlakte'] as int,
      woonplaats: json['Woonplaats'] as String,
    );

Map<String, dynamic> _$$_PropertySummaryToJson(_$_PropertySummary instance) =>
    <String, dynamic>{
      'AantalKamers': instance.aantalKamers,
      'Adres': instance.adres,
      'FotoLarge': instance.fotoLarge,
      'HeeftVideo': instance.heeftVideo,
      'Id': instance.id,
      'IsVerkocht': instance.isVerkocht,
      'Perceeloppervlakte': instance.perceeloppervlakte,
      'Postcode': instance.postcode,
      'Prijs': instance.prijs,
      'PublicatieDatum':
          const DateTimeSerializer().toJson(instance.publicatieDatum),
      'Woonoppervlakte': instance.woonoppervlakte,
      'Woonplaats': instance.woonplaats,
    };

_$_Paging _$$_PagingFromJson(Map<String, dynamic> json) => _$_Paging(
      aantalPaginas: json['AantalPaginas'] as int,
      huidigePagina: json['HuidigePagina'] as int,
    );

Map<String, dynamic> _$$_PagingToJson(_$_Paging instance) => <String, dynamic>{
      'AantalPaginas': instance.aantalPaginas,
      'HuidigePagina': instance.huidigePagina,
    };

_$_Prijs _$$_PrijsFromJson(Map<String, dynamic> json) => _$_Prijs(
      koopprijs: json['Koopprijs'] as int,
    );

Map<String, dynamic> _$$_PrijsToJson(_$_Prijs instance) => <String, dynamic>{
      'Koopprijs': instance.koopprijs,
    };
