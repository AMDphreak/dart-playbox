/**
 * Weather Application
 * by Ryan Johnson
 * Assignment: Weather Application
 * Create a command-line weather application that retrieves and displays weather
 * information for a given location. The application should use an external
 * weather API to fetch the weather data. The user should be able to provide a
 * location (e.g., city name or zip code) as input and receive the current
 * weather information in return.
 */

import 'package:http/http.dart' as http;
main(List<String> arguments) async {
  // https://api.openweathermap.org/data/3.0/onecall?lat=35.084950&lon=-89.883130&appid=12a43bee31e480ac172ea3033fa53b22
  String apiKey = "12a43bee31e480ac172ea3033fa53b22";
  String lat = "35.084950", long = "-89.883130";
  final url = Uri(
      scheme: 'https',
      host: 'api.openweathermap.org',
      path: '/data/3.0/onecall',
      queryParameters: {
        'lat':lat,
        'lon':long,
        'appid':apiKey});

  var response = await http.get(url);
  final jsonData = response.body;
  print('Response: $jsonData');


}