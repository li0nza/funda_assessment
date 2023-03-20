import 'package:json_annotation/json_annotation.dart';

class DateTimeSerializer implements JsonConverter<DateTime, String> {
  const DateTimeSerializer();

  @override
  DateTime fromJson(String data) {
    RegExp exp = RegExp(r"/Date\((\d+)([+-]\d{4})\)/");
    Match match = exp.firstMatch(data)!;

    int timestamp = int.parse(match.group(1)!);

    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  @override
  String toJson(DateTime date) => date.toString();
}
