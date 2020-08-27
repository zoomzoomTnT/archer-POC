import 'package:archer_flutter_ui/constants/styles.dart';
import 'package:archer_flutter_ui/widgets/page_banner.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CareerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
              PageBanner(['assets/images/page_banner.jpeg'],
                  title: "Career",
                  isRollingBanner: false,
                  hasEnrollButton: false),
              Container(
                  padding: EdgeInsets.fromLTRB(200, 10, 200, 0),
                  width: double.maxFinite,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(80, 60, 80, 0),
                      child: Text(
                          "Now Hiring:\nHouston Dragon Academy is now hiring as we expand the school. We hope that you can bring ingenuity and new perspectives to our community, and in return, we will provide a space for growth and development!\n1\. Requirements: Undergraduate degree or above with teaching experience. Must have a sense for solid work and responsibility, strong communication and coordination skills, and be able to work with a team.\n2\. Positions available: three Chinese teachers, two math teachers,  two English teachers, one school bus driver.\n3\. Wages are negotiable.\n4\. Contact method:  email\nContact: Ms. Guo\n\nEmail: info@houstondragonacademy.org\n招聘启事\n龙学天下中文学校现因学校发展需要，现面向社会招聘，愿您的加入给我们带来新的活力，我们也将为您提供广阔的发展空间!\n1\、招聘要求：正规本科以上师范学历，工作认真扎实，具有较强的沟通协调能力和团队协作意识，有责任心;师范专业，有教学经验。\n2\、招聘人数及岗位：中文老师 三名， 数学老师二名，校车司机一名， 英文老师两名。\n3\、工资待遇, 面议\n4\、报名方式：Email\n联系人：郭老师\nEmail: info@houstondragonacademy.org\n\npost coming up soon...\n\n\n\n\n\n",
                          style: TextStyle(fontSize: 15.0,fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0)
                      ),
                    ),
                  )
              ),
              Container(height: 30,),

            ]
        ));
  }

}
