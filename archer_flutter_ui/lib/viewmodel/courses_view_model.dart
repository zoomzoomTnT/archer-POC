import 'package:archer_flutter_ui/models/course_item_model.dart';
import 'package:archer_flutter_ui/services/api.dart';
import 'package:flutter/material.dart';

import '../locator.dart';


class CoursesViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  List<CourseItemModel> _courses;
  List<CourseItemModel> get courses => _courses;

  Future getEpisodes() async {
    var courseResults = await _api.getCourses();

    if (courseResults is String) {
      // show error
    } else {
      _courses = courseResults;
    }

    notifyListeners();
  }
}