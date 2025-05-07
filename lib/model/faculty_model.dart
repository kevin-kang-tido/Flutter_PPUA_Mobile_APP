class Faculty {
  final String title;
  final String image;
  final String titleKh;

  Faculty({required this.title, required this.image, required this.titleKh});

  factory Faculty.fromJson(Map<String, dynamic> json) {
    return Faculty(
      title: json['title'],
      image: json['image'],
      titleKh: json['titleKh'],
    );
  }
}
