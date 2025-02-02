class ApiConstants {
  // API url
  static const String baseUrl = "https://newsapi.org/v2";

  // api key
  static const String apiKey = '073429271a3e47f8a17ad71f0143370e';
  // everything
  static const String everything = '$baseUrl/everything?q=all&apikey=$apiKey';
  // Top-Headlines
  static const String topHeadlines =
      '$baseUrl/top-headlines?country=us&apiKey=$apiKey';
  // All sources
  static const String allSources =
      '$baseUrl/top-headlines/sources?country=us&apiKey=$apiKey';
  // Sports
  static const String sports =
      '$baseUrl/top-headlines?category=sports&apiKey=$apiKey';
}
