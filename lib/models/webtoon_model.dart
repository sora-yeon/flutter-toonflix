class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel(Map<String, dynamic> json) // dart가 지원하는 data structure
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
