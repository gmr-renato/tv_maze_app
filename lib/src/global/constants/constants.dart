class Constants {
  // URL
  static const String baseApiUrl = 'https://api.tvmaze.com';
  static const String searchShowsEndPoint = '/search/shows?q=';

  static const String showsEndPoint = '/shows';

  static const String episodesEndPoint = '/episodes';

  // EXAMPLE IMAGES
  static const String logoTvMaze =
      'https://static.tvmaze.com/images/tvm-header-logo.png';
  static const String placeholderTvShow =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwt_P-IiO7iiAGO3n-5nTfhR7JoLJI8wsqO_kGqm9Y4H0qcAijdw';
  static const String placeholderPoster =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB7suUSfqcNx7SVHZoskbX1LoDsx_XC7A789qGRl4F-1eDYq5f';
  static const String placeholderCast =
      'http://theremedyjournal.com/wp-content/uploads/2017/07/wundermag_1920x1080-128x128.jpg';
  static const String placeholderEpisode =
      'https://www.tzaustria.com/decor_overview/img/decors/tz_tecnoglas_schlammgrau.jpg';

  //PAGINATION
  static const int quantityForPage = 250;
}
