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
      builder: (context, model, child) =>
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                PageBanner(
                  ['assets/images/page_banner.jpeg'],
                  title: 'OUR CLASSES',
                  description: 'Yes, we are best known for our Chinese Language classes that are taught only by super-fluent, bilingual teachers.\nHowever, at Houston Dragon Academy, your child can be exposed to so much more.',
                  isRollingBanner: false,
                  hasEnrollButton: true,
                ),
                SizedBox(
                  height: 100,
                ),
                Text('Search:'),
                SizedBox(height: 50,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: model.courses == null
                      ? CircularProgressIndicator()
                      : CourseList(courses: model.courses),
                )
              ],
            ),
          ),
    );
  }
}
