/*import 'map_key.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


class LocationService {
  final String key = mapkey;
}

Future<String> getPlaceId(String input) async {
  var key;
  final String url =
      'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';
      var response await = http.get(Uri.parse(url));

      var json = convert.jsondecode(response.body);

      var placeId = json['candidates'][0]['place_id'] as String;

      print(placeId);

      return placeId;
}


Future<Map<String ,dynamic>> getPlace(String input) async
{
  final placeId = getPlaceId(input);

  final String url = 
  'https://maps.googleapis.com/maps/api/place/details/json?place=$placeId&key=$key';
     var response await = http.get(Uri.parse(url));

      var json = convert.jsonDecode(response.body);

var results = json['result'] as Map<String , dynamic>;

print (results);
return results;
}
*/
