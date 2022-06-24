import 'dart:convert';
import 'package:collection/collection.dart';

class Url {
  String? url;

  Url({this.url});

  factory Url.fromMap(Map<String, dynamic> data) => Url(
        url: data['url'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'url': url,
      };

  factory Url.fromJson(String data) {
    return Url.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Url) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => url.hashCode;
}
