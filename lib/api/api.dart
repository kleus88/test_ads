import 'package:http/http.dart' as http;
import 'package:test_ads/models/url.dart';

//урл запроса
var api = '';

class Api {
  static Future<Url> getUrl() async {
    var url = Uri.parse(api);

    var response = await http.get(
      url,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
    );
    if (response.statusCode == 200) {
      return Url.fromJson(response.body.toString());
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }
}
