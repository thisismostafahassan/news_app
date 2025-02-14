class ApiConstants {
  // API url
  static const String baseUrl = "https://newsapi.org/v2";
  // api key
  static const String apiKey = '073429271a3e47f8a17ad71f0143370e';
  // everything
  static const String everything =
      '$baseUrl/everything?q=general&apikey=$apiKey';
  // Top-Headlines All sources
  static const String topHeadlineallSources =
      '$baseUrl/top-headlines?category=general&apiKey=$apiKey';
  // Politics
  static const String politics =
      '$baseUrl/top-headlines?category=politics&apiKey=$apiKey'; // Sports
  static const String sports =
      '$baseUrl/top-headlines?category=sports&apiKey=$apiKey';
  // Health
  static const String health =
      '$baseUrl/top-headlines?category=health&apiKey=$apiKey';
  // Crypto
  static const String crypto =
      '$baseUrl/top-headlines?category=crypto&apiKey=$apiKey';
  // Drama
  static const String drama =
      '$baseUrl/top-headlines?category=drama&apiKey=$apiKey';
  // Entertainment
  static const String entertainment =
      '$baseUrl/top-headlines?category=entertainment&apiKey=$apiKey';
}
