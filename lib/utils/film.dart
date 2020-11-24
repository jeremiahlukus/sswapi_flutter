class Film {
  String title;

  Film({this.title});

  factory Film.fromJson(Map<String, dynamic> json) {
    return Film(
      title: json['title'] as String,
    );
  }
}
