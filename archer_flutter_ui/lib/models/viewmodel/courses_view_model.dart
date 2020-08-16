import 'package:archer_flutter_ui/models/datamodel/course_item_model.dart';
import 'package:archer_flutter_ui/stacked/locator.dart';
import 'package:archer_flutter_ui/services/courses_api.dart';
import 'package:flutter/material.dart';



class CourseViewModel extends ChangeNotifier {
  final _api = locator<CoursesApi>();

  List<CourseItemModel> _courses;
  List<CourseItemModel> get courses => _courses;

  Future getCourses() async {
    var courseResults = await _api.getCourses();

    if (courseResults is String) {
      // show error
    } else {
      _courses = courseResults;
    }

    notifyListeners();
 }

}