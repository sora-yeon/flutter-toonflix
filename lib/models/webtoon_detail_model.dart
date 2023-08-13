class WebtoonDetailModel {
  final String title, about, genre, age;

  WebtoonDetailModel(Map<String, dynamic> json) // dart가 지원하는 data structure
      : title = json['title'],
        about = json['about'],
        genre = json['genre'],
        age = json['age'];
}
