class WebtoonEpisodeModel {
  final String id, title, rating, date;

  WebtoonEpisodeModel(Map<String, dynamic> json) // dart가 지원하는 data structure
      : title = json['title'],
        id = json['id'],
        rating = json['rating'],
        date = json['date'];
}
