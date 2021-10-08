// import 'dart:convert';

// import 'package:holywing_test/models/music.dart';
// import 'package:meta/meta.dart';

// class MusicApiClient {
//   final _baseUrl = 'https://api.jsonbin.io/b/6152c7f6aa02be1d445015a4';
//   final http.Client httpClient;

//   MusicApiClient({
//     @required this.httpClient,
//   }) : assert(httpClient != null);

//   fetchMusic() {}
// }

// Future<Music> fetchMusic() async {
//   final url = 'https://api.jsonbin.io/b/6152c7f6aa02be1d445015a4';
//   final response = await this.httpClient.get(url);

//   if (response.statusCode != 200) {
//     throw new Exception('error getting musics');
//   }

//   final json = jsonDecode(response.body);
//   var music;
//   return music.fromJson(json);
// }
