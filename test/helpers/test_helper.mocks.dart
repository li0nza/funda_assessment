// Mocks generated by Mockito 5.3.2 from annotations
// in funda_assessment/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:convert' as _i14;
import 'dart:typed_data' as _i15;

import 'package:dartz/dartz.dart' as _i2;
import 'package:funda_assessment/data/datasources/remote_data_source.dart'
    as _i12;
import 'package:funda_assessment/data/helpers/failure.dart' as _i7;
import 'package:funda_assessment/data/helpers/rest_client.dart' as _i13;
import 'package:funda_assessment/domain/entities/funda_data.dart' as _i8;
import 'package:funda_assessment/domain/entities/property.dart' as _i9;
import 'package:funda_assessment/domain/repositories/funda_data_repository.dart'
    as _i3;
import 'package:funda_assessment/domain/repositories/property_repository.dart'
    as _i4;
import 'package:funda_assessment/domain/usecases/get_funda_data.dart' as _i10;
import 'package:funda_assessment/domain/usecases/get_property_details.dart'
    as _i11;
import 'package:http/http.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFundaDataRepository_1 extends _i1.SmartFake
    implements _i3.FundaDataRepository {
  _FakeFundaDataRepository_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePropertyRepository_2 extends _i1.SmartFake
    implements _i4.PropertyRepository {
  _FakePropertyRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClient_3 extends _i1.SmartFake implements _i5.Client {
  _FakeClient_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_4 extends _i1.SmartFake implements _i5.Response {
  _FakeResponse_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_5 extends _i1.SmartFake
    implements _i5.StreamedResponse {
  _FakeStreamedResponse_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FundaDataRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockFundaDataRepository extends _i1.Mock
    implements _i3.FundaDataRepository {
  MockFundaDataRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.Either<_i7.Failure, _i8.FundaData>> getFundaData({
    required int? page,
    required String? search,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFundaData,
          [],
          {
            #page: page,
            #search: search,
          },
        ),
        returnValue: _i6.Future<_i2.Either<_i7.Failure, _i8.FundaData>>.value(
            _FakeEither_0<_i7.Failure, _i8.FundaData>(
          this,
          Invocation.method(
            #getFundaData,
            [],
            {
              #page: page,
              #search: search,
            },
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, _i8.FundaData>>);
}

/// A class which mocks [PropertyRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPropertyRepository extends _i1.Mock
    implements _i4.PropertyRepository {
  MockPropertyRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.Either<_i7.Failure, _i9.Property>> getPropertyDetails(
          {required String? id}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPropertyDetails,
          [],
          {#id: id},
        ),
        returnValue: _i6.Future<_i2.Either<_i7.Failure, _i9.Property>>.value(
            _FakeEither_0<_i7.Failure, _i9.Property>(
          this,
          Invocation.method(
            #getPropertyDetails,
            [],
            {#id: id},
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, _i9.Property>>);
}

/// A class which mocks [GetFundaData].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetFundaData extends _i1.Mock implements _i10.GetFundaData {
  MockGetFundaData() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.FundaDataRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeFundaDataRepository_1(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i3.FundaDataRepository);
  @override
  _i6.Future<_i2.Either<_i7.Failure, _i8.FundaData>> execute({
    int? page = 0,
    String? search = r'',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
          {
            #page: page,
            #search: search,
          },
        ),
        returnValue: _i6.Future<_i2.Either<_i7.Failure, _i8.FundaData>>.value(
            _FakeEither_0<_i7.Failure, _i8.FundaData>(
          this,
          Invocation.method(
            #execute,
            [],
            {
              #page: page,
              #search: search,
            },
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, _i8.FundaData>>);
}

/// A class which mocks [GetPropertyDetails].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetPropertyDetails extends _i1.Mock
    implements _i11.GetPropertyDetails {
  MockGetPropertyDetails() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.PropertyRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakePropertyRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.PropertyRepository);
  @override
  _i6.Future<_i2.Either<_i7.Failure, _i9.Property>> execute(
          {required String? id}) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
          {#id: id},
        ),
        returnValue: _i6.Future<_i2.Either<_i7.Failure, _i9.Property>>.value(
            _FakeEither_0<_i7.Failure, _i9.Property>(
          this,
          Invocation.method(
            #execute,
            [],
            {#id: id},
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, _i9.Property>>);
}

/// A class which mocks [RemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoteDataSource extends _i1.Mock implements _i12.RemoteDataSource {
  MockRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<String> get({
    Map<String, String>? urlParams,
    required String? endpoint,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
          {
            #urlParams: urlParams,
            #endpoint: endpoint,
          },
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
}

/// A class which mocks [RestClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockRestClient extends _i1.Mock implements _i13.RestClient {
  MockRestClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Client get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeClient_3(
          this,
          Invocation.getter(#client),
        ),
      ) as _i5.Client);
  @override
  _i6.Future<_i5.Response> get({
    String? endpoint = r'',
    Map<String, String>? urlParams,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
          {
            #endpoint: endpoint,
            #urlParams: urlParams,
          },
        ),
        returnValue: _i6.Future<_i5.Response>.value(_FakeResponse_4(
          this,
          Invocation.method(
            #get,
            [],
            {
              #endpoint: endpoint,
              #urlParams: urlParams,
            },
          ),
        )),
      ) as _i6.Future<_i5.Response>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i5.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i5.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i5.Response>.value(_FakeResponse_4(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i5.Response>);
  @override
  _i6.Future<_i5.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i5.Response>.value(_FakeResponse_4(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i5.Response>);
  @override
  _i6.Future<_i5.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i14.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i5.Response>.value(_FakeResponse_4(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i5.Response>);
  @override
  _i6.Future<_i5.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i14.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i5.Response>.value(_FakeResponse_4(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i5.Response>);
  @override
  _i6.Future<_i5.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i14.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i5.Response>.value(_FakeResponse_4(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i5.Response>);
  @override
  _i6.Future<_i5.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i14.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i5.Response>.value(_FakeResponse_4(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i5.Response>);
  @override
  _i6.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<_i15.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i15.Uint8List>.value(_i15.Uint8List(0)),
      ) as _i6.Future<_i15.Uint8List>);
  @override
  _i6.Future<_i5.StreamedResponse> send(_i5.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i6.Future<_i5.StreamedResponse>.value(_FakeStreamedResponse_5(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i6.Future<_i5.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}