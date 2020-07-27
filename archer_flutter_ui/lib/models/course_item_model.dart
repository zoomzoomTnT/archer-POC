class CourseItemModel {
  final String title;
  final double duration;
  final String imageUrl;

  CourseItemModel({
    this.title,
    this.duration,
    this.imageUrl,
  });

  CourseItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        duration = map['duration'],
        imageUrl = map['imageUrl'];
}