// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'funda_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FundaData _$FundaDataFromJson(Map<String, dynamic> json) {
  return _FundaData.fromJson(json);
}

/// @nodoc
mixin _$FundaData {
  @JsonKey(name: 'Metadata')
  Metadata get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'Objects')
  List<PropertySummary> get properties => throw _privateConstructorUsedError;
  @JsonKey(name: 'Paging')
  Paging get paging => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotaalAantalObjecten')
  int get totaalAantalObjecten => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FundaDataCopyWith<FundaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundaDataCopyWith<$Res> {
  factory $FundaDataCopyWith(FundaData value, $Res Function(FundaData) then) =
      _$FundaDataCopyWithImpl<$Res, FundaData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Metadata') Metadata metadata,
      @JsonKey(name: 'Objects') List<PropertySummary> properties,
      @JsonKey(name: 'Paging') Paging paging,
      @JsonKey(name: 'TotaalAantalObjecten') int totaalAantalObjecten});

  $MetadataCopyWith<$Res> get metadata;
  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class _$FundaDataCopyWithImpl<$Res, $Val extends FundaData>
    implements $FundaDataCopyWith<$Res> {
  _$FundaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? properties = null,
    Object? paging = null,
    Object? totaalAantalObjecten = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<PropertySummary>,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      totaalAantalObjecten: null == totaalAantalObjecten
          ? _value.totaalAantalObjecten
          : totaalAantalObjecten // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res> get metadata {
    return $MetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PagingCopyWith<$Res> get paging {
    return $PagingCopyWith<$Res>(_value.paging, (value) {
      return _then(_value.copyWith(paging: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FundaDataCopyWith<$Res> implements $FundaDataCopyWith<$Res> {
  factory _$$_FundaDataCopyWith(
          _$_FundaData value, $Res Function(_$_FundaData) then) =
      __$$_FundaDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Metadata') Metadata metadata,
      @JsonKey(name: 'Objects') List<PropertySummary> properties,
      @JsonKey(name: 'Paging') Paging paging,
      @JsonKey(name: 'TotaalAantalObjecten') int totaalAantalObjecten});

  @override
  $MetadataCopyWith<$Res> get metadata;
  @override
  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class __$$_FundaDataCopyWithImpl<$Res>
    extends _$FundaDataCopyWithImpl<$Res, _$_FundaData>
    implements _$$_FundaDataCopyWith<$Res> {
  __$$_FundaDataCopyWithImpl(
      _$_FundaData _value, $Res Function(_$_FundaData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? properties = null,
    Object? paging = null,
    Object? totaalAantalObjecten = null,
  }) {
    return _then(_$_FundaData(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<PropertySummary>,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      totaalAantalObjecten: null == totaalAantalObjecten
          ? _value.totaalAantalObjecten
          : totaalAantalObjecten // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FundaData implements _FundaData {
  const _$_FundaData(
      {@JsonKey(name: 'Metadata')
          required this.metadata,
      @JsonKey(name: 'Objects')
          required final List<PropertySummary> properties,
      @JsonKey(name: 'Paging')
          required this.paging,
      @JsonKey(name: 'TotaalAantalObjecten')
          required this.totaalAantalObjecten})
      : _properties = properties;

  factory _$_FundaData.fromJson(Map<String, dynamic> json) =>
      _$$_FundaDataFromJson(json);

  @override
  @JsonKey(name: 'Metadata')
  final Metadata metadata;
  final List<PropertySummary> _properties;
  @override
  @JsonKey(name: 'Objects')
  List<PropertySummary> get properties {
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  @override
  @JsonKey(name: 'Paging')
  final Paging paging;
  @override
  @JsonKey(name: 'TotaalAantalObjecten')
  final int totaalAantalObjecten;

  @override
  String toString() {
    return 'FundaData(metadata: $metadata, properties: $properties, paging: $paging, totaalAantalObjecten: $totaalAantalObjecten)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FundaData &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.paging, paging) || other.paging == paging) &&
            (identical(other.totaalAantalObjecten, totaalAantalObjecten) ||
                other.totaalAantalObjecten == totaalAantalObjecten));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      metadata,
      const DeepCollectionEquality().hash(_properties),
      paging,
      totaalAantalObjecten);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FundaDataCopyWith<_$_FundaData> get copyWith =>
      __$$_FundaDataCopyWithImpl<_$_FundaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FundaDataToJson(
      this,
    );
  }
}

abstract class _FundaData implements FundaData {
  const factory _FundaData(
      {@JsonKey(name: 'Metadata')
          required final Metadata metadata,
      @JsonKey(name: 'Objects')
          required final List<PropertySummary> properties,
      @JsonKey(name: 'Paging')
          required final Paging paging,
      @JsonKey(name: 'TotaalAantalObjecten')
          required final int totaalAantalObjecten}) = _$_FundaData;

  factory _FundaData.fromJson(Map<String, dynamic> json) =
      _$_FundaData.fromJson;

  @override
  @JsonKey(name: 'Metadata')
  Metadata get metadata;
  @override
  @JsonKey(name: 'Objects')
  List<PropertySummary> get properties;
  @override
  @JsonKey(name: 'Paging')
  Paging get paging;
  @override
  @JsonKey(name: 'TotaalAantalObjecten')
  int get totaalAantalObjecten;
  @override
  @JsonKey(ignore: true)
  _$$_FundaDataCopyWith<_$_FundaData> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  @JsonKey(name: 'Titel')
  String get titel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call({@JsonKey(name: 'Titel') String titel});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titel = null,
  }) {
    return _then(_value.copyWith(
      titel: null == titel
          ? _value.titel
          : titel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetadataCopyWith<$Res> implements $MetadataCopyWith<$Res> {
  factory _$$_MetadataCopyWith(
          _$_Metadata value, $Res Function(_$_Metadata) then) =
      __$$_MetadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Titel') String titel});
}

/// @nodoc
class __$$_MetadataCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$_Metadata>
    implements _$$_MetadataCopyWith<$Res> {
  __$$_MetadataCopyWithImpl(
      _$_Metadata _value, $Res Function(_$_Metadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titel = null,
  }) {
    return _then(_$_Metadata(
      titel: null == titel
          ? _value.titel
          : titel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Metadata implements _Metadata {
  const _$_Metadata({@JsonKey(name: 'Titel') required this.titel});

  factory _$_Metadata.fromJson(Map<String, dynamic> json) =>
      _$$_MetadataFromJson(json);

  @override
  @JsonKey(name: 'Titel')
  final String titel;

  @override
  String toString() {
    return 'Metadata(titel: $titel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Metadata &&
            (identical(other.titel, titel) || other.titel == titel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, titel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetadataCopyWith<_$_Metadata> get copyWith =>
      __$$_MetadataCopyWithImpl<_$_Metadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetadataToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata(
      {@JsonKey(name: 'Titel') required final String titel}) = _$_Metadata;

  factory _Metadata.fromJson(Map<String, dynamic> json) = _$_Metadata.fromJson;

  @override
  @JsonKey(name: 'Titel')
  String get titel;
  @override
  @JsonKey(ignore: true)
  _$$_MetadataCopyWith<_$_Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertySummary _$PropertySummaryFromJson(Map<String, dynamic> json) {
  return _PropertySummary.fromJson(json);
}

/// @nodoc
mixin _$PropertySummary {
  @JsonKey(name: 'AantalKamers')
  int get aantalKamers => throw _privateConstructorUsedError;
  @JsonKey(name: 'Adres')
  String get adres => throw _privateConstructorUsedError;
  @JsonKey(name: 'FotoLarge')
  String get fotoLarge => throw _privateConstructorUsedError;
  @JsonKey(name: 'HeeftVideo')
  bool get heeftVideo => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsVerkocht')
  bool get isVerkocht => throw _privateConstructorUsedError;
  @JsonKey(name: 'Perceeloppervlakte')
  int get perceeloppervlakte => throw _privateConstructorUsedError;
  @JsonKey(name: 'Postcode')
  String get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Prijs')
  Prijs get prijs => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  @JsonKey(name: 'PublicatieDatum')
  DateTime get publicatieDatum => throw _privateConstructorUsedError;
  @JsonKey(name: 'Woonoppervlakte')
  int get woonoppervlakte => throw _privateConstructorUsedError;
  @JsonKey(name: 'Woonplaats')
  String get woonplaats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertySummaryCopyWith<PropertySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertySummaryCopyWith<$Res> {
  factory $PropertySummaryCopyWith(
          PropertySummary value, $Res Function(PropertySummary) then) =
      _$PropertySummaryCopyWithImpl<$Res, PropertySummary>;
  @useResult
  $Res call(
      {@JsonKey(name: 'AantalKamers')
          int aantalKamers,
      @JsonKey(name: 'Adres')
          String adres,
      @JsonKey(name: 'FotoLarge')
          String fotoLarge,
      @JsonKey(name: 'HeeftVideo')
          bool heeftVideo,
      @JsonKey(name: 'Id')
          String id,
      @JsonKey(name: 'IsVerkocht')
          bool isVerkocht,
      @JsonKey(name: 'Perceeloppervlakte')
          int perceeloppervlakte,
      @JsonKey(name: 'Postcode')
          String postcode,
      @JsonKey(name: 'Prijs')
          Prijs prijs,
      @DateTimeSerializer()
      @JsonKey(name: 'PublicatieDatum')
          DateTime publicatieDatum,
      @JsonKey(name: 'Woonoppervlakte')
          int woonoppervlakte,
      @JsonKey(name: 'Woonplaats')
          String woonplaats});

  $PrijsCopyWith<$Res> get prijs;
}

/// @nodoc
class _$PropertySummaryCopyWithImpl<$Res, $Val extends PropertySummary>
    implements $PropertySummaryCopyWith<$Res> {
  _$PropertySummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aantalKamers = null,
    Object? adres = null,
    Object? fotoLarge = null,
    Object? heeftVideo = null,
    Object? id = null,
    Object? isVerkocht = null,
    Object? perceeloppervlakte = null,
    Object? postcode = null,
    Object? prijs = null,
    Object? publicatieDatum = null,
    Object? woonoppervlakte = null,
    Object? woonplaats = null,
  }) {
    return _then(_value.copyWith(
      aantalKamers: null == aantalKamers
          ? _value.aantalKamers
          : aantalKamers // ignore: cast_nullable_to_non_nullable
              as int,
      adres: null == adres
          ? _value.adres
          : adres // ignore: cast_nullable_to_non_nullable
              as String,
      fotoLarge: null == fotoLarge
          ? _value.fotoLarge
          : fotoLarge // ignore: cast_nullable_to_non_nullable
              as String,
      heeftVideo: null == heeftVideo
          ? _value.heeftVideo
          : heeftVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isVerkocht: null == isVerkocht
          ? _value.isVerkocht
          : isVerkocht // ignore: cast_nullable_to_non_nullable
              as bool,
      perceeloppervlakte: null == perceeloppervlakte
          ? _value.perceeloppervlakte
          : perceeloppervlakte // ignore: cast_nullable_to_non_nullable
              as int,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      prijs: null == prijs
          ? _value.prijs
          : prijs // ignore: cast_nullable_to_non_nullable
              as Prijs,
      publicatieDatum: null == publicatieDatum
          ? _value.publicatieDatum
          : publicatieDatum // ignore: cast_nullable_to_non_nullable
              as DateTime,
      woonoppervlakte: null == woonoppervlakte
          ? _value.woonoppervlakte
          : woonoppervlakte // ignore: cast_nullable_to_non_nullable
              as int,
      woonplaats: null == woonplaats
          ? _value.woonplaats
          : woonplaats // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrijsCopyWith<$Res> get prijs {
    return $PrijsCopyWith<$Res>(_value.prijs, (value) {
      return _then(_value.copyWith(prijs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PropertySummaryCopyWith<$Res>
    implements $PropertySummaryCopyWith<$Res> {
  factory _$$_PropertySummaryCopyWith(
          _$_PropertySummary value, $Res Function(_$_PropertySummary) then) =
      __$$_PropertySummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'AantalKamers')
          int aantalKamers,
      @JsonKey(name: 'Adres')
          String adres,
      @JsonKey(name: 'FotoLarge')
          String fotoLarge,
      @JsonKey(name: 'HeeftVideo')
          bool heeftVideo,
      @JsonKey(name: 'Id')
          String id,
      @JsonKey(name: 'IsVerkocht')
          bool isVerkocht,
      @JsonKey(name: 'Perceeloppervlakte')
          int perceeloppervlakte,
      @JsonKey(name: 'Postcode')
          String postcode,
      @JsonKey(name: 'Prijs')
          Prijs prijs,
      @DateTimeSerializer()
      @JsonKey(name: 'PublicatieDatum')
          DateTime publicatieDatum,
      @JsonKey(name: 'Woonoppervlakte')
          int woonoppervlakte,
      @JsonKey(name: 'Woonplaats')
          String woonplaats});

  @override
  $PrijsCopyWith<$Res> get prijs;
}

/// @nodoc
class __$$_PropertySummaryCopyWithImpl<$Res>
    extends _$PropertySummaryCopyWithImpl<$Res, _$_PropertySummary>
    implements _$$_PropertySummaryCopyWith<$Res> {
  __$$_PropertySummaryCopyWithImpl(
      _$_PropertySummary _value, $Res Function(_$_PropertySummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aantalKamers = null,
    Object? adres = null,
    Object? fotoLarge = null,
    Object? heeftVideo = null,
    Object? id = null,
    Object? isVerkocht = null,
    Object? perceeloppervlakte = null,
    Object? postcode = null,
    Object? prijs = null,
    Object? publicatieDatum = null,
    Object? woonoppervlakte = null,
    Object? woonplaats = null,
  }) {
    return _then(_$_PropertySummary(
      aantalKamers: null == aantalKamers
          ? _value.aantalKamers
          : aantalKamers // ignore: cast_nullable_to_non_nullable
              as int,
      adres: null == adres
          ? _value.adres
          : adres // ignore: cast_nullable_to_non_nullable
              as String,
      fotoLarge: null == fotoLarge
          ? _value.fotoLarge
          : fotoLarge // ignore: cast_nullable_to_non_nullable
              as String,
      heeftVideo: null == heeftVideo
          ? _value.heeftVideo
          : heeftVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isVerkocht: null == isVerkocht
          ? _value.isVerkocht
          : isVerkocht // ignore: cast_nullable_to_non_nullable
              as bool,
      perceeloppervlakte: null == perceeloppervlakte
          ? _value.perceeloppervlakte
          : perceeloppervlakte // ignore: cast_nullable_to_non_nullable
              as int,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      prijs: null == prijs
          ? _value.prijs
          : prijs // ignore: cast_nullable_to_non_nullable
              as Prijs,
      publicatieDatum: null == publicatieDatum
          ? _value.publicatieDatum
          : publicatieDatum // ignore: cast_nullable_to_non_nullable
              as DateTime,
      woonoppervlakte: null == woonoppervlakte
          ? _value.woonoppervlakte
          : woonoppervlakte // ignore: cast_nullable_to_non_nullable
              as int,
      woonplaats: null == woonplaats
          ? _value.woonplaats
          : woonplaats // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PropertySummary implements _PropertySummary {
  const _$_PropertySummary(
      {@JsonKey(name: 'AantalKamers')
          required this.aantalKamers,
      @JsonKey(name: 'Adres')
          required this.adres,
      @JsonKey(name: 'FotoLarge')
          required this.fotoLarge,
      @JsonKey(name: 'HeeftVideo')
          required this.heeftVideo,
      @JsonKey(name: 'Id')
          required this.id,
      @JsonKey(name: 'IsVerkocht')
          required this.isVerkocht,
      @JsonKey(name: 'Perceeloppervlakte')
          this.perceeloppervlakte = 0,
      @JsonKey(name: 'Postcode')
          required this.postcode,
      @JsonKey(name: 'Prijs')
          required this.prijs,
      @DateTimeSerializer()
      @JsonKey(name: 'PublicatieDatum')
          required this.publicatieDatum,
      @JsonKey(name: 'Woonoppervlakte')
          required this.woonoppervlakte,
      @JsonKey(name: 'Woonplaats')
          required this.woonplaats});

  factory _$_PropertySummary.fromJson(Map<String, dynamic> json) =>
      _$$_PropertySummaryFromJson(json);

  @override
  @JsonKey(name: 'AantalKamers')
  final int aantalKamers;
  @override
  @JsonKey(name: 'Adres')
  final String adres;
  @override
  @JsonKey(name: 'FotoLarge')
  final String fotoLarge;
  @override
  @JsonKey(name: 'HeeftVideo')
  final bool heeftVideo;
  @override
  @JsonKey(name: 'Id')
  final String id;
  @override
  @JsonKey(name: 'IsVerkocht')
  final bool isVerkocht;
  @override
  @JsonKey(name: 'Perceeloppervlakte')
  final int perceeloppervlakte;
  @override
  @JsonKey(name: 'Postcode')
  final String postcode;
  @override
  @JsonKey(name: 'Prijs')
  final Prijs prijs;
  @override
  @DateTimeSerializer()
  @JsonKey(name: 'PublicatieDatum')
  final DateTime publicatieDatum;
  @override
  @JsonKey(name: 'Woonoppervlakte')
  final int woonoppervlakte;
  @override
  @JsonKey(name: 'Woonplaats')
  final String woonplaats;

  @override
  String toString() {
    return 'PropertySummary(aantalKamers: $aantalKamers, adres: $adres, fotoLarge: $fotoLarge, heeftVideo: $heeftVideo, id: $id, isVerkocht: $isVerkocht, perceeloppervlakte: $perceeloppervlakte, postcode: $postcode, prijs: $prijs, publicatieDatum: $publicatieDatum, woonoppervlakte: $woonoppervlakte, woonplaats: $woonplaats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PropertySummary &&
            (identical(other.aantalKamers, aantalKamers) ||
                other.aantalKamers == aantalKamers) &&
            (identical(other.adres, adres) || other.adres == adres) &&
            (identical(other.fotoLarge, fotoLarge) ||
                other.fotoLarge == fotoLarge) &&
            (identical(other.heeftVideo, heeftVideo) ||
                other.heeftVideo == heeftVideo) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isVerkocht, isVerkocht) ||
                other.isVerkocht == isVerkocht) &&
            (identical(other.perceeloppervlakte, perceeloppervlakte) ||
                other.perceeloppervlakte == perceeloppervlakte) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.prijs, prijs) || other.prijs == prijs) &&
            (identical(other.publicatieDatum, publicatieDatum) ||
                other.publicatieDatum == publicatieDatum) &&
            (identical(other.woonoppervlakte, woonoppervlakte) ||
                other.woonoppervlakte == woonoppervlakte) &&
            (identical(other.woonplaats, woonplaats) ||
                other.woonplaats == woonplaats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aantalKamers,
      adres,
      fotoLarge,
      heeftVideo,
      id,
      isVerkocht,
      perceeloppervlakte,
      postcode,
      prijs,
      publicatieDatum,
      woonoppervlakte,
      woonplaats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertySummaryCopyWith<_$_PropertySummary> get copyWith =>
      __$$_PropertySummaryCopyWithImpl<_$_PropertySummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PropertySummaryToJson(
      this,
    );
  }
}

abstract class _PropertySummary implements PropertySummary {
  const factory _PropertySummary(
      {@JsonKey(name: 'AantalKamers')
          required final int aantalKamers,
      @JsonKey(name: 'Adres')
          required final String adres,
      @JsonKey(name: 'FotoLarge')
          required final String fotoLarge,
      @JsonKey(name: 'HeeftVideo')
          required final bool heeftVideo,
      @JsonKey(name: 'Id')
          required final String id,
      @JsonKey(name: 'IsVerkocht')
          required final bool isVerkocht,
      @JsonKey(name: 'Perceeloppervlakte')
          final int perceeloppervlakte,
      @JsonKey(name: 'Postcode')
          required final String postcode,
      @JsonKey(name: 'Prijs')
          required final Prijs prijs,
      @DateTimeSerializer()
      @JsonKey(name: 'PublicatieDatum')
          required final DateTime publicatieDatum,
      @JsonKey(name: 'Woonoppervlakte')
          required final int woonoppervlakte,
      @JsonKey(name: 'Woonplaats')
          required final String woonplaats}) = _$_PropertySummary;

  factory _PropertySummary.fromJson(Map<String, dynamic> json) =
      _$_PropertySummary.fromJson;

  @override
  @JsonKey(name: 'AantalKamers')
  int get aantalKamers;
  @override
  @JsonKey(name: 'Adres')
  String get adres;
  @override
  @JsonKey(name: 'FotoLarge')
  String get fotoLarge;
  @override
  @JsonKey(name: 'HeeftVideo')
  bool get heeftVideo;
  @override
  @JsonKey(name: 'Id')
  String get id;
  @override
  @JsonKey(name: 'IsVerkocht')
  bool get isVerkocht;
  @override
  @JsonKey(name: 'Perceeloppervlakte')
  int get perceeloppervlakte;
  @override
  @JsonKey(name: 'Postcode')
  String get postcode;
  @override
  @JsonKey(name: 'Prijs')
  Prijs get prijs;
  @override
  @DateTimeSerializer()
  @JsonKey(name: 'PublicatieDatum')
  DateTime get publicatieDatum;
  @override
  @JsonKey(name: 'Woonoppervlakte')
  int get woonoppervlakte;
  @override
  @JsonKey(name: 'Woonplaats')
  String get woonplaats;
  @override
  @JsonKey(ignore: true)
  _$$_PropertySummaryCopyWith<_$_PropertySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

Paging _$PagingFromJson(Map<String, dynamic> json) {
  return _Paging.fromJson(json);
}

/// @nodoc
mixin _$Paging {
  @JsonKey(name: 'AantalPaginas')
  int get aantalPaginas => throw _privateConstructorUsedError;
  @JsonKey(name: 'HuidigePagina')
  int get huidigePagina => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingCopyWith<Paging> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingCopyWith<$Res> {
  factory $PagingCopyWith(Paging value, $Res Function(Paging) then) =
      _$PagingCopyWithImpl<$Res, Paging>;
  @useResult
  $Res call(
      {@JsonKey(name: 'AantalPaginas') int aantalPaginas,
      @JsonKey(name: 'HuidigePagina') int huidigePagina});
}

/// @nodoc
class _$PagingCopyWithImpl<$Res, $Val extends Paging>
    implements $PagingCopyWith<$Res> {
  _$PagingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aantalPaginas = null,
    Object? huidigePagina = null,
  }) {
    return _then(_value.copyWith(
      aantalPaginas: null == aantalPaginas
          ? _value.aantalPaginas
          : aantalPaginas // ignore: cast_nullable_to_non_nullable
              as int,
      huidigePagina: null == huidigePagina
          ? _value.huidigePagina
          : huidigePagina // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PagingCopyWith<$Res> implements $PagingCopyWith<$Res> {
  factory _$$_PagingCopyWith(_$_Paging value, $Res Function(_$_Paging) then) =
      __$$_PagingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'AantalPaginas') int aantalPaginas,
      @JsonKey(name: 'HuidigePagina') int huidigePagina});
}

/// @nodoc
class __$$_PagingCopyWithImpl<$Res>
    extends _$PagingCopyWithImpl<$Res, _$_Paging>
    implements _$$_PagingCopyWith<$Res> {
  __$$_PagingCopyWithImpl(_$_Paging _value, $Res Function(_$_Paging) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aantalPaginas = null,
    Object? huidigePagina = null,
  }) {
    return _then(_$_Paging(
      aantalPaginas: null == aantalPaginas
          ? _value.aantalPaginas
          : aantalPaginas // ignore: cast_nullable_to_non_nullable
              as int,
      huidigePagina: null == huidigePagina
          ? _value.huidigePagina
          : huidigePagina // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Paging implements _Paging {
  const _$_Paging(
      {@JsonKey(name: 'AantalPaginas') required this.aantalPaginas,
      @JsonKey(name: 'HuidigePagina') required this.huidigePagina});

  factory _$_Paging.fromJson(Map<String, dynamic> json) =>
      _$$_PagingFromJson(json);

  @override
  @JsonKey(name: 'AantalPaginas')
  final int aantalPaginas;
  @override
  @JsonKey(name: 'HuidigePagina')
  final int huidigePagina;

  @override
  String toString() {
    return 'Paging(aantalPaginas: $aantalPaginas, huidigePagina: $huidigePagina)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Paging &&
            (identical(other.aantalPaginas, aantalPaginas) ||
                other.aantalPaginas == aantalPaginas) &&
            (identical(other.huidigePagina, huidigePagina) ||
                other.huidigePagina == huidigePagina));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, aantalPaginas, huidigePagina);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      __$$_PagingCopyWithImpl<_$_Paging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingToJson(
      this,
    );
  }
}

abstract class _Paging implements Paging {
  const factory _Paging(
          {@JsonKey(name: 'AantalPaginas') required final int aantalPaginas,
          @JsonKey(name: 'HuidigePagina') required final int huidigePagina}) =
      _$_Paging;

  factory _Paging.fromJson(Map<String, dynamic> json) = _$_Paging.fromJson;

  @override
  @JsonKey(name: 'AantalPaginas')
  int get aantalPaginas;
  @override
  @JsonKey(name: 'HuidigePagina')
  int get huidigePagina;
  @override
  @JsonKey(ignore: true)
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      throw _privateConstructorUsedError;
}

Prijs _$PrijsFromJson(Map<String, dynamic> json) {
  return _Prijs.fromJson(json);
}

/// @nodoc
mixin _$Prijs {
  @JsonKey(name: 'Koopprijs')
  int get koopprijs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrijsCopyWith<Prijs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrijsCopyWith<$Res> {
  factory $PrijsCopyWith(Prijs value, $Res Function(Prijs) then) =
      _$PrijsCopyWithImpl<$Res, Prijs>;
  @useResult
  $Res call({@JsonKey(name: 'Koopprijs') int koopprijs});
}

/// @nodoc
class _$PrijsCopyWithImpl<$Res, $Val extends Prijs>
    implements $PrijsCopyWith<$Res> {
  _$PrijsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? koopprijs = null,
  }) {
    return _then(_value.copyWith(
      koopprijs: null == koopprijs
          ? _value.koopprijs
          : koopprijs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrijsCopyWith<$Res> implements $PrijsCopyWith<$Res> {
  factory _$$_PrijsCopyWith(_$_Prijs value, $Res Function(_$_Prijs) then) =
      __$$_PrijsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Koopprijs') int koopprijs});
}

/// @nodoc
class __$$_PrijsCopyWithImpl<$Res> extends _$PrijsCopyWithImpl<$Res, _$_Prijs>
    implements _$$_PrijsCopyWith<$Res> {
  __$$_PrijsCopyWithImpl(_$_Prijs _value, $Res Function(_$_Prijs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? koopprijs = null,
  }) {
    return _then(_$_Prijs(
      koopprijs: null == koopprijs
          ? _value.koopprijs
          : koopprijs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Prijs implements _Prijs {
  const _$_Prijs({@JsonKey(name: 'Koopprijs') required this.koopprijs});

  factory _$_Prijs.fromJson(Map<String, dynamic> json) =>
      _$$_PrijsFromJson(json);

  @override
  @JsonKey(name: 'Koopprijs')
  final int koopprijs;

  @override
  String toString() {
    return 'Prijs(koopprijs: $koopprijs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Prijs &&
            (identical(other.koopprijs, koopprijs) ||
                other.koopprijs == koopprijs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, koopprijs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrijsCopyWith<_$_Prijs> get copyWith =>
      __$$_PrijsCopyWithImpl<_$_Prijs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrijsToJson(
      this,
    );
  }
}

abstract class _Prijs implements Prijs {
  const factory _Prijs(
      {@JsonKey(name: 'Koopprijs') required final int koopprijs}) = _$_Prijs;

  factory _Prijs.fromJson(Map<String, dynamic> json) = _$_Prijs.fromJson;

  @override
  @JsonKey(name: 'Koopprijs')
  int get koopprijs;
  @override
  @JsonKey(ignore: true)
  _$$_PrijsCopyWith<_$_Prijs> get copyWith =>
      throw _privateConstructorUsedError;
}
