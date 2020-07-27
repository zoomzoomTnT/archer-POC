import 'package:archer_flutter_ui/models/course_item_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Api {
  static const String _apiEndpoint =
      'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics';

  Future<dynamic> getCourses() async {
    var response = await http.get('$_apiEndpoint/course');

    if (response.statusCode == 200) {
      var courses = (json.decode(response.body) as List)
          .map((episode) => CourseItemModel.fromJson(episode))
          .toList();
      return courses;
    }

    // something wrong happened
    return 'Could not fetch the courses at this time';
  }
}