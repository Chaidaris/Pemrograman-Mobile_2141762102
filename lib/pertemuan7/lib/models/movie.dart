class Movie {
  late int id;
  late String title;
  late double voteAverage;
  late String overview;
  late String posterPath;

  Movie(this.id, this.title, this.voteAverage, this.overview, this.posterPath);

  Movie.fromJson(Map<String, dynamic> parsedjson) {
    this.id = parsedjson['id'];
    this.title = parsedjson['title'];
    this.voteAverage = parsedjson['vote_average'].toDouble();
    this.overview = parsedjson['overview'];
    this.posterPath = parsedjson['poster_path'];
  }
}
