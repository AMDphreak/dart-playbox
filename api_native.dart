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

import 'dart:io';
import 'dart:convert';
main() {
  String apiKey = "12a43bee31e480ac172ea3033fa53b22";
  String endpoint = "api.openweathermap.org";
  HttpClient()
  .getUrl(Uri.parse('https://swapi.co/api/people/1'))
  .then((request) => request.close())
  .then((response) => response.transform(Utf8Decoder()).listen(print));
}