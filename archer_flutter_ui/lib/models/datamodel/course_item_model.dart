class CourseItemModel {
  final String title;
  final String schedule;
  final String imageUrl;
  final String displayCategory;
  final String campus;

  CourseItemModel({
    this.title,
    this.schedule,
    this.imageUrl,
    this.displayCategory,
    this.campus,
  });

  CourseItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        schedule = map['schedule'],
        imageUrl = map['imageUrl'],
        displayCategory = map['displayCategory'],
        campus = map['campus'];
}