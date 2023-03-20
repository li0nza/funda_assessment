import 'dart:io';

import 'package:funda_assessment/data/helpers/exceptions.dart';
import 'package:http/http.dart' as http;

/// [RestClient] used to implement `http`, requires an `http.Client`.
class RestClient {
  final http.Client client;
  RestClient({required this.client});

  // TODO: MOVE TO CONFIG
  /// `API key` for the API, should be moved to `config`.
  final String _key = 'ac1b0b1572524640a0ecc54de453ea9f.';

  /// `Base Url` for the API, should be moved to `config`.
  final String _baseUrl = 'https://partnerapi.funda.nl/feeds/Aanbod.svc/json/';

  /// [get] uses `http.Client` to do a HTTP `get` to the `_baseUrl + endpoint`, also
  /// accepts an optional `Map<String, String>` for `urlParams`.
  ///
  /// [http.Response] is returned, or [SocketException] if no connectivity is available.
  Future<http.Response> get({String endpoint = '', Map<String, String>? urlParams}) async {
    try {
      String queryString = '';
      Uri uri;
      //TODO: this is dirty, but writing an elaborate function to handle Fundas API structure for 2 calls seems excessive at this point
      if (endpoint.isNotEmpty) {
        uri = Uri.parse('${_baseUrl}detail/$_key/koop/$endpoint');
      } else {
        if (urlParams != null) {
          urlParams.forEach((key, value) {
            queryString += "&$key=$value";
          });
        }

        uri = Uri.parse('$_baseUrl$_key?type=koop$queryString');
      }

      final response = await client.get(uri).timeout(const Duration(seconds: 5));
      return response;
    } on SocketException {
      throw FetchDataException('No Internet connection');
    } on Exception {
      throw FetchDataException();
    }
  }
}
