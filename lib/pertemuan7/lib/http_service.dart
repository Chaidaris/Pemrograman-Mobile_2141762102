import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:pertemuan7/models/movie.dart';

class HttpService {
  final String apiKey =
      'https://api.themoviedb.org/3/movie/550?api_key=31171ec65a0c7193826f6ec0a4324247';
  final String baseUrl =
      'https://api.themoviedb.org/3/tv/popular?api_key=31171ec65a0c7193826f6ec0a4324247';
  Future<List?> getPopularMovies() async {
    final String uri = baseUrl + '&api_key=' + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      print("Fail");
      return null;
    }
  }
}
