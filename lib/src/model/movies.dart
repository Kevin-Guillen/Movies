import 'movie_result.dart';

class Movies {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<MoviesResult> results;

  Movies({
    required this.page,
    required this.totalResults,
    required this.totalPages,
    required this.results,
  });

  factory Movies.fromJson(Map<String, dynamic> parsedJson) {
    var results = parsedJson['results'] as List;
    List<MoviesResult> _movieList = [];
    for (int i = 0; i < results.length; i++) {
      _movieList.add(MoviesResult.fromJson(results[i]));
    }

    return Movies(
      page: parsedJson['page'],
      totalResults: parsedJson['total_results'],
      totalPages: parsedJson['total_pages'],
      results: _movieList,
    );
  }
}
