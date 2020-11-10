import 'package:archer_flutter_ui/widgets/blue_bar.dart';
import 'package:archer_flutter_ui/widgets/call_to_action.dart';
import 'package:archer_flutter_ui/widgets/course_details.dart';
import 'package:archer_flutter_ui/widgets/page_banner.dart';
import 'package:archer_flutter_ui/widgets/page_sep.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PageBanner(
                ['assets/images/page_banner.jpeg']),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: ScreenTypeLayout(
                mobile: _HomePageMobile(),
                desktop: _HomePageDesktop(),
              ),
            ),

          ]),
      ),
//      bottomNavigationBar: Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          Text(
//            'You have pushed the button this many times:',
//          ),
//          Text(
//            '$_counter',
//            style: Theme.of(context).textTheme.headline4,
//          )
//        ],
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          _incrementCounter();
//        },
//        tooltip: 'Increment',
//        child: Icon(Icons.plus_one),
//      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageDesktop extends StatelessWidget {
  const _HomePageDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          '\nOUR PROGRAMS', style: TextStyle(fontSize: 32.0), textAlign: TextAlign.center,
        ),
        BlueBar(
          width: 170.0,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(160.0, 0.0, 160.0, 0.0),
          child: Text(
              '\nHouston Dragon Academy is your one-stop-shop for your children\'s immersion in Chinese language and Culture. We are best known for our Chinese Language classes that are taught only by extremely capable, fluent, bilingual teachers. Not only do we teach Chinese from level 1 to 12, we are also certified to prepare students for all levels of the HSK (Chinese Proficiency Test) exam. However, at Houston Dragon Academy, your child can be exposed to so much more. All of our teaching staff are highly trained to work with children and are experts in their respective fields. We offer a wide range of classes to supplement your child’s immersion into Chinese culture: including Robotics, Mathematics, Dance, Calligraphy, Martial Arts, Chinese instruments, Ping pong, and more.\n'
              'We offer Mandarin immersion classes, after school: Monday- Friday ( 4:00 P.M.-6:00 P.M.), weekends (9:00A.M.-5:00 P.M.),and during school breaks ( Winter, spring, summer, and Fall camps).\n'
              'Houston Dragon Academy also offers SAT and PSAT Prep classes as well as AP Chinese, all other AP courses, college preparation, and more .\n',
              style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand', height: 1.75)
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(160.0, 0.0, 160.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 170,
                  width: 270,
                  child: FlatButton(
                    onPressed: () {},
                    child:Column(
                      children: <Widget>[
                        Image(
                          alignment: FractionalOffset.center,
                          fit: BoxFit.contain,
                          image: AssetImage('images/afterschool-white.png'),
                        ),
                        Text(
                          "\n4-6 PM After School Class",
                            style: TextStyle(fontSize: 16.0, fontFamily: 'Quicksand',color: Colors.white),
                        ),
                      ]
                    ),
                    padding: EdgeInsets.symmetric(vertical:20 , horizontal: 30),
                    color: Colors.red.shade300,
                    shape: RoundedRectangleBorder(side: BorderSide(
                      width: 1,
                      style: BorderStyle.solid,
                      color: Colors.red.shade300,
                    ), borderRadius: BorderRadius.circular(20)),

                  ),
                ),
                SizedBox(
                  height: 170,
                  width: 270,
                  child: FlatButton(
                    onPressed: () {},
                    child:Column(
                        children: <Widget>[
                          Image(
                            alignment: FractionalOffset.center,
                            fit: BoxFit.contain,
                            image: AssetImage('images/weekendclass-white.png'),
                          ),
                          Text(
                            "\nWeekend Class",
                            style: TextStyle(fontSize: 16.0, fontFamily: 'Quicksand',color: Colors.white),
                          ),
                        ]
                    ),
                    padding: EdgeInsets.symmetric(vertical:20 , horizontal: 30),
                    color: Colors.yellow.shade700,
                    shape: RoundedRectangleBorder(side: BorderSide(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.yellow.shade700,
                    ), borderRadius: BorderRadius.circular(20)),

                  ),
                ),
                SizedBox(
                  height: 170,
                  width: 270,
                  child: FlatButton(
                    onPressed: () {},
                    child:Column(
                        children: <Widget>[
                          Image(
                            alignment: FractionalOffset.center,
                            fit: BoxFit.contain,
                            image: AssetImage('images/collegepre-white.png'),
                          ),
                          Text(
                            "\nCollege Pre & Consulting",
                            style: TextStyle(fontSize: 16.0, fontFamily: 'Quicksand',color: Colors.white),
                          ),
                        ]
                    ),
                    padding: EdgeInsets.symmetric(vertical:20 , horizontal: 30),
                    color: Colors.lightBlueAccent.shade200,                  shape: RoundedRectangleBorder(side: BorderSide(
                    width: 1,
                    style: BorderStyle.solid,
                    color: Colors.lightBlueAccent.shade200,
                  ), borderRadius: BorderRadius.circular(20)),


                  ),
                ),
                SizedBox(
                  height: 170,
                  width: 270,
                  child: FlatButton(
                    onPressed: () {},
                    child:Column(
                        children: <Widget>[
                          Image(
                            alignment: FractionalOffset.center,
                            fit: BoxFit.contain,
                            image: AssetImage('images/camps-white.png'),
                          ),
                          Text(
                            "\nVarious Campus",
                            style: TextStyle(fontSize: 16.0, fontFamily: 'Quicksand',color: Colors.white),
                          ),
                        ]
                    ),
                    padding: EdgeInsets.symmetric(vertical:20 , horizontal: 30),
                    color: Colors.green.shade300,
                    shape: RoundedRectangleBorder(side: BorderSide(
                      width: 1,
                      style: BorderStyle.solid,
                      color: Colors.green.shade300,
                    ), borderRadius: BorderRadius.circular(20)),

                  ),
                ),
              ]
          )
        ),
        Text(
          '\nOUR CLASSES', style: TextStyle(fontSize: 32.0), textAlign: TextAlign.center,
        ),
        BlueBar(
          width: 170.0,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(160.0, 0.0, 160.0, 0.0),
          child: Text(
              'The school possess the strength of outstanding educators, and flexible ways of teaching. We will treat every single student with earnesty, let students learn with joy,',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Quicksand', height: 1.75)
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(160.0, 0.0, 160.0, 0.0),
          child: Text(
              'and allow the parents to feel at ease and be satisfied!\n\n',
              style: TextStyle(fontSize: 14.0, fontFamily: 'Quicksand', height: 1.75)
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(220.0, 0.0, 220.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              Container(
                child: Column(
                  children: [
                    Image(
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset.center,
                      image: AssetImage('images/math.png'),
                      height: 100,
                    ),
                    Text(
                        'MATH',
                        style: TextStyle(fontSize: 26.0, fontFamily: 'Quicksand', height: 1.75)
                    ),
                    Image(
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset.center,
                      image: AssetImage('images/icon-home-chinese.png'),
                      height: 90,
                    ),
                    Text(
                        'CHINESE',
                        style: TextStyle(fontSize: 26.0, fontFamily: 'Quicksand', height: 1.75)
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image(
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset.center,
                      image: AssetImage('images/sports.png'),
                      height: 100,
                    ),
                    Text(
                        'SPORTS',
                        style: TextStyle(fontSize: 26.0, fontFamily: 'Quicksand', height: 1.75)
                    ),
                    Image(
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset.center,
                      image: AssetImage('images/icon-home-english.png'),
                      height: 90,
                    ),
                    Text(
                        'ENGLISH',
                        style: TextStyle(fontSize: 26.0, fontFamily: 'Quicksand', height: 1.75)
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image(
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset.center,
                      image: AssetImage('images/art.png'),
                      height: 100,
                    ),
                    Text(
                        'ART',
                        style: TextStyle(fontSize: 26.0, fontFamily: 'Quicksand', height: 1.75)
                    ),
                    Image(
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset.center,
                      image: AssetImage('images/icon-home-cooking.png'),
                      height: 90,
                    ),
                    Text(
                        'COOKING',
                        style: TextStyle(fontSize: 26.0, fontFamily: 'Quicksand', height: 1.75)
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image(
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset.center,
                      image: AssetImage('images/music.png'),
                      height: 100,
                    ),
                    Text(
                        'MUSIC',
                        style: TextStyle(fontSize: 26.0, fontFamily: 'Quicksand', height: 1.75)
                    ),
                    Image(
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset.center,
                      image: AssetImage('images/icon-home-culture.png'),
                      height: 90,
                    ),
                    Text(
                        'CULTURE',
                        style: TextStyle(fontSize: 26.0, fontFamily: 'Quicksand', height: 1.75)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Text("\n"),
        PageSeparator(
          imageUrl:"assets/page1-award.png",
          description: 'Merrily learn Chinese, effortlessly learn Mathematic\n\nRight here at Houston Dragon Academy!',
        ),
        Text(
          '\nOUR LATEST NEWS', style: TextStyle(fontSize: 32.0), textAlign: TextAlign.center,
        ),
        BlueBar(
          width: 170.0,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(220.0, 0.0, 220.0, 0.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
              SizedBox(
                height: 340,
                width: 300,
                child: Container(
                  child: Column(
                    children: [
                      Image(
                        fit: BoxFit.cover,
                        alignment: FractionalOffset.center,
                        image: AssetImage('images/replace.jpg'),
                        height: 300,
                      ),
                      Text(
                        "Latest news"
                      )
                    ]
                  ),
                )
              ),
            SizedBox(
                height: 340,
                width: 300,
                child: Container(
                  child: Column(
                      children: [
                        Image(
                          fit: BoxFit.cover,
                          alignment: FractionalOffset.center,
                          image: AssetImage('images/replace1.jpeg'),
                          height: 300,
                        ),
                        Text(
                            "Latest news"
                        )
                      ]
                  ),
                )
            ),
            SizedBox(
                height: 340,
                width: 300,
                child: Container(
                  child: Column(
                      children: [
                        Image(
                          fit: BoxFit.cover,
                          alignment: FractionalOffset.center,
                          image: AssetImage('images/replace2.jpeg'),
                          height: 300,
                        ),
                        Text(
                            "Latest news"
                        )
                      ]
                  ),
                )
            ),

          ]
          ),
        ),








      ],
    );
  }
}

class _HomePageMobile extends StatelessWidget {
  const _HomePageMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        SizedBox(
          height: 100,
        ),
        CallToAction('Register'),
      ],
    );
  }
}
