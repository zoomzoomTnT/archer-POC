import 'package:archer_flutter_ui/constants/constants.dart';
import 'package:archer_flutter_ui/models/datamodel/course_item_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class CoursesApi {
  static const String _apiEndpoint =
      'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics';

  Future<dynamic> getCourses() async {
    var response = await http.get('$_apiEndpoint/course', headers: corsHeaders);

    if (response.statusCode == 200) {
      var courses = (json.decode(response.body) as List)
          .map((course) => CourseItemModel.fromJson(course))
          .toList();
      return courses;
    }

    // something wrong happened
    return [
      CourseItemModel(
          title: 'Mandarin-AP Chinese',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Monday-Thursday;4:00-5:00PMy',
          displayCategory: 'After School',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      ),
      CourseItemModel(
          title: 'Mandarin-CSL',
          schedule: 'Saturday or Sunday',
          displayCategory: 'Weekend Classes',
          campus: 'online campus',
          imageUrl: 'assets/course1.jpeg'
      )
    ];
  }
}