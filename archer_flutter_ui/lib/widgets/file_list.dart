import 'package:archer_flutter_ui/models/viewmodel/courses_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class _FileListItem extends StatelessWidget {
  final String title;
  final String fileType;
  final String fileLink;

  _FileListItem({this.title, this.fileType, this.fileLink});

  @override
  Widget build(BuildContext context) {
    return Text("1111: $title, $fileType, $fileLink");//todo
  }
}

class FileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CourseViewModel>.reactive(
      viewModelBuilder: () => CourseViewModel(),//todo
      onModelReady: (model) => model.getCourses(),//todo
      builder: (context, model, child) => Column(
        children: <Widget>[
          ...model.courses.map((file) => _FileListItem(
            title: file.title,
            fileType: file.displayCategory,
            fileLink: file.imageUrl
          ))
        ],
      )
    );
  }
}

//title
//download this $fileType       //Icon //$fileType($fileLink)
