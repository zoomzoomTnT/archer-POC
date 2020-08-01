import 'package:archer_flutter_ui/models/viewmodel/courses_view_model.dart';
import 'package:archer_flutter_ui/widgets/course_cards.dart';
import 'package:archer_flutter_ui/widgets/page_banner.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CourseViewModel>.reactive(
      viewModelBuilder: () => CourseViewModel(),
      onModelReady: (model) => model.getCourses(),
      builder: (context, model, child) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Text('Classes'),
              SizedBox(height: 50,),
              model.courses == null
                  ? CircularProgressIndicator()
                  : CourseList(courses: model.courses),
            ],
          )),
    );
  }
}
