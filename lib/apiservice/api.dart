import 'dart:convert';

import '../model/movie.dart';
import '../widgets/constants.dart';
import 'package:http/http.dart' as http;

class Api {

      static const _trendingUrl =
      "https://api.themoviedb.org/3/trending/movie/day?language=en-US&api_key=${Constants.apiKey}";

      static const _topRatedUrl =
          "https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1&api_key=${Constants.apiKey}";


      static const _upcommingUrl =
          "https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1&api_key=${Constants.apiKey}";




      Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)["results"] as List;
      print(decodedData);

      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    }else{
      print("Error: ${response.statusCode}");
      print("Response: ${response.body}");
      throw Exception("Failed to load trending movies");
    }
  }


      Future<List<Movie>> getTopRatedMovie() async {
        final response = await http.get(Uri.parse(_topRatedUrl));
        if (response.statusCode == 200) {
          final decodedData = json.decode(response.body)["results"] as List;
          print(decodedData);
          return decodedData.map((movie) => Movie.fromJson(movie)).toList();
        }else{
          print("Error: ${response.statusCode}");
          print("Response: ${response.body}");
          throw Exception("Failed to load topRated movies");
        }
      }

      Future<List<Movie>> getUpcommingMovie() async {
        final response = await http.get(Uri.parse(_upcommingUrl));
        if (response.statusCode == 200) {
          final decodedData = json.decode(response.body)["results"] as List;
          print(decodedData);
          return decodedData.map((movie) => Movie.fromJson(movie)).toList();
        }else{
          print("Error: ${response.statusCode}");
          print("Response: ${response.body}");
          throw Exception("Failed to load upcoming movies");
        }
      }
}
