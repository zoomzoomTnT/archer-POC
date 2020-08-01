import 'package:archer_flutter_ui/models/datamodel/course_item_model.dart';
import 'package:flutter/material.dart';

class CourseList extends StatelessWidget {
  final List<CourseItemModel> courses;
  CourseList({this.courses});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...courses.map(
              (course) => CourseItem(model: course),
        )
      ],
    );
  }
}

class CourseItem extends StatelessWidget {
  final CourseItemModel model;
  const CourseItem({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: SizedBox(
        width: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 180,
              child: Image.asset(model.imageUrl, fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    model.title,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    softWrap: true,
                  ),
                  Text(
                    '${model.schedule}',
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    '${model.displayCategory}',
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    '${model.campus}',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
            RaisedButton(
              color: Colors.blue,

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
              onPressed: () {},
              child: Text('Details'),
            )
          ],
        ),
      ),
    );
  }
}