import 'package:archer_flutter_ui/widgets/blue_bar.dart';
import 'package:archer_flutter_ui/widgets/page_sep.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(),
        child: Column(
          children: <Widget>[
            Text(
              '\nOUR STORY', style: TextStyle(fontSize: 32.0), textAlign: TextAlign.center,
            ),
            BlueBar(
              width: 170.0,
            ),
            Text(
              'Houston Dragon Academy is a comprehensive school, that mainly focuses on fostering student’s \nChinese and Mathematics learning, as well as preparing for College Admission Examinations.\n',
                style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand', height: 1.75)
              ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      //padding: EdgeInsets.all(20.0),
                      child: Image.asset('assets/about-students.jpg',scale: 0.75,)
                      ),
                    ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(75.0, 0.0, 30.0, 0.0),
                      child: Text(
                        '\n\nIn 2016, in order to make it convenient for children who lived near Medical Center to learn Chinese in the neighborhood, Instructor Wang Rong founded the Houston Dragon Academy, hoping that every child could learn here with joy, mature healthily, and help them to realize their hope and dream. \n\nThe campus is located at the Houston Medical Center, near West University. In the vicinity, there are various hospitals such as the famous MD Anderson Cancer Center, Texas Children’s Hospital, and others. There is also a KUMON and a Houston Public Library at Stella Link. The academy will admit students on 8/22/2016, and classes officially begin on 8/27/2016. The school’s predecessor is a French language school, with many classrooms and activity rooms, very well-equipped facilities, and a playground. The campus is quiet, convenient, and extremely safe.',
                        textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0)
                      ),

                    ),
                  ),
                ],

              ),
            ),
            PageSeparator(
              imageUrl:"assets/page1-award.png",
              description: 'Merrily learn Chinese, effortlessly learn Mathematic\n\nRight here at Houston Dragon Academy!',
            ),
            Text(
              '\nOUR GREAT TEACHERS', style: TextStyle(fontSize: 32.0), textAlign: TextAlign.center,
            ),
            BlueBar(
              width: 350.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'Principal - RongWang',
                              style: TextStyle(fontSize: 20.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                            ),
                            Text(
                              '毕业于休斯顿大学工商管理硕士专业， 同时取得美国公立学校教师资格证。\n现任教一所公立高中，有近十年美国的公立学校的教学经验；并且同时任职于休斯顿龙学天下中文学校的校长。\n2016 年她在加尔维斯顿海岸近50多所公立学校和私立学校，近万名老师中，被选为最受学生欢迎和最有影响力的Top 50 的教师称号。也是这近百年唯一得此称号的华人教师。\nI am extremely excited to be the Chinese teacher at Ball High School for 10 years, and 12 years a Chinese teacher of weekend Chinese school. I have a master’s degree from the University of Houston and have been certified by the state of Texas to teach EC-12 Chinese Class, ESL (EC-12). director of afterschool and AP Chinese Class.\nI have a great passion for education and I am extremely proud of my students’ progress and accomplishment. From 2009 to the present day, around 200 students of my AP Chinese class have earned a 5 on the test. Not only that, but my students’ rate of passing is 100% and the rate at which my students’ score a 5 is 99%. No words can express how excited I am to be able to work with students. What comes to mind is the old Chinese proverb: “Fortune always appreciate a hardworking person.” As one of the award winners of the TOP 50 teachers in Galveston, Texas for the 2015-16 year, I want to say: Parents, students, thank you for letting me to take part in your child’s growth.\n',
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                            ),
                          ],
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                        child: Image(
                          fit: BoxFit.none,
                          alignment: FractionalOffset.center,
                          image: AssetImage('rong_wang.jpg'),
                          height: 300,
                        ),
                      ),
                      ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        child: Image(
                          fit: BoxFit.scaleDown,
                          alignment: FractionalOffset.center,
                          image: AssetImage('1.jpg'),
                          height: 300,
                        ),
                      )
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Kindergarten - Wenzhu Guo\n\n中国海洋大学12级硕士，曾在研究生期间帮助导师进行本科生教学及管理的相关工作。2012年考取教师资格证。\n\n来美后开始从事中文教育教学工作。喜欢孩子，并善于和孩子沟通，对调动孩子学习兴趣和学习热情积累了一定的经验。对每个孩子都要有爱心，耐心和责任心，让他们在快乐中学习是我的教育信念\n\nI graduated from the Ocean University of China with a master\'s degree in 2012. During my graduate study, I got a chance to become an assisted mentor in undergraduate teaching and management. At that time, I found that I loved to teach and hoped to be a teacher, eventually attending and completing the training for a teaching certificate.\n\nAfter coming to the United States, I began to engage in Chinese teaching. I love children and am good at communicating with them, having accumulated experience in the past years in arousing their learning interest and enthusiasm. It is my educational belief to have love, patience, and responsibility for each child.\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                      ),

                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        child: Text(
                          '1st Grade - Qian Duan\n\n段谦，毕业于河南省师范学院。从事幼儿美术教学20余年，评为省级优秀教师，省级名师，省级骨干教师，幼儿美术学科带头人。辅导的儿童画多次获得国家级及国际奖项。撰写论文多次获得省一等奖，组织的教学活动多次获得一等奖。\n\n在海外中文教学中根据海外孩子的学中文难的特点，从兴趣出发，寓教于乐，采用游戏形式让孩子快乐学习，形成了自己独特的教学模式。在担任手工绘画老师中，自己根据孩子的需求设计课程，使孩子绘画与手工巧妙接合起来，在做中学画中想，培养了孩子观察和想象力。孩子的作品获国际一等奖。\n\nQian Duan graduated from Henan Normal University for Kindergarten Teachers and has engaged in teaching children\'s art for more than 20 years.She is rated as one of his province\'s outstanding teachers.\n\nBy advising children on their painting techniques, she’s helped her students win national and international awards. She has won first place awards in province several times, and her teaching organization has also helped place first.\n\nTo help overseas Chinese children learn Chinese despite the difficulty, She uses her own unique teaching mode, entertaining and educational games to keep students interested and happy. She designed a course for specific students\' needs, cultivating talent through observation and imagination. She had children\'s work win first place in international competitions.\n',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                        ),
                      )
                  ),
                  Expanded(
                    child: Container(
                      child: Image(
                        fit: BoxFit.scaleDown,
                        alignment: FractionalOffset.center,
                        image: AssetImage('2.jpg'),
                        height: 300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        child: Image(
                          fit: BoxFit.scaleDown,
                          alignment: FractionalOffset.center,
                          image: AssetImage('3.jpg'),
                          height: 300,
                        ),
                      )
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '2nd Grade - Xiang Long\n\n湖南师范大学中国汉语言文学（国家文科基地班）本科，中山大学汉语言文字学硕士。应用语言学专业讲师。从事教师工作十年，在中山大学南方学院外语学院汉语国际教育专业先后讲授《现代汉语》、《社会语言学》、《语言学概论》、《汉语修辞》等多门专业主干课程。有扎实的专业基础和丰富的教学经验。\n\n于2018年加入龙学教师团队，我会一如既往地以踏实、进取的工作态度，认真教好每个孩子，让孩子在轻松的氛围中快乐地学习汉语。\n\nBachelor of Chinese Language and Literature (National Liberal Arts Base), Hunan Normal University, Master of Chinese Language and Literature, Sun Yat-Sen University. Lecturer in Applied Linguistics.\n\nBefore coming to the United States, I worked as a teacher for ten years at the Nanfang College of Sun Yat-sen University.I taught many courses in my Chinese international education major, such as Modern Chinese, Sociolinguistics, Introduction to Linguistics, and Chinese Rhetoric. I joined the team of Dragon Academy in 2018. Here, I will continue to teach each child carefully and let the children learn Chinese happily in a relaxed atmosphere.\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                      ),
                    ),
                  ),
                ],

              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        child: Text(
                          '3rd Grade - Hua Wang\n\n毕业于休斯顿社区学院儿童教育副学士学位。'
                              '\n\n担任美国 Faith Day School 主教老师一年，华夏中文学校中文老师三年，现在 Houston Dragon Academy 担任中文教师。\n\n2017年参加国际华文教师职业能力认证，并将获得暨南大学华文学院颁发的华文教师证。\n\nGraduated from Houston Community College with Associate of Applied Science in Child Development, I had one year lead teacher working experience at Faith Lutheran Day School and three years Mandarin Chinese teaching working experience at Huaxia Chinese School. Currently, I teach third and fourth grade Mandarin Chinese at Houston Dragon Academy.\n\nIn 2017, I participated the International Chinese Language Teacher Professional Ability Certification program, and received the Chinese Teacher Certificate issued by the Chinese Language Institute of Jinan University.\n',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                        ),

                      )
                  ),
                  Expanded(
                    child: Container(
                      child: Image(
                        fit: BoxFit.scaleDown,
                        alignment: FractionalOffset.center,
                        image: AssetImage('4-new.jpg'),
                        height: 300,
                      ),

                    ),
                  ),
                ],

              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        child: Image(
                          fit: BoxFit.scaleDown,
                          alignment: FractionalOffset.center,
                          image: AssetImage('5.jpg'),
                          height: 300,
                        ),
                      )
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '4th Grade - Xiaoju Cheng\n\n美国休斯顿大学的教育学硕士，专业方向是k-12教学大纲和课程的设计。现在是一名小学中文教师，任教于一所中文沉浸式教学的德州知名公立学校。\n\n硕士毕业后从事着与中文教育相关的工作。曾任教于两所私立学校 Tanglewood academy 和 River oaks Baptist school，教授对象是非中文母语的孩子们。并且一直在龙学的暑期夏令营和周末中文班给华语家庭的孩子们教授中文。\n\n梦想是成为一名卓越的中文老师，用专业去设计优质的教学，用专心去培养孩子们，在他们的心里撒在热爱中文和中国文化的种子。\n\nMs. Cheng graduated from the University of Houston with a master’s degree in Education. Her expertise in Education is developing curriculum and creating novel instructional plans for teaching Mandarin.\n\nCurrently she is a language teacher at a public charter school, and works for the Houston Dragon Academy weekend school. She believes that every child needs to be educated with love, care and respect. She makes learning language fun and creates engaging lessons that motivate students to blow past their potentials. Her professional goal is to be an outstanding educator in the language teaching areas.\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        '4th Grade - Junfang Nie\n\n'
                        '郑州师大11级本科，郑州市重点小学示范校10年一线中段教师，多次被评为优秀教师，执教示范课获得一等奖。系统的教育教学理念，丰富的教育教学经验，年轻而有活力的课堂互动，深受学生们的喜爱。总是相信勤奋工作学习能给我们带来更多的机会。\n\n'
                        'Zhengzhou Normal University 11th undergraduate, Zhengzhou key primary school demonstration school 10 years middle school teacher, Junfang Nie has been repeatedly rated as an outstanding teacher, where her coaching demonstration class won first prize. I believe that a systematic educational teaching concept, rich educational teaching experience, and young and dynamic classroom interaction, are deeply loved by students. I always believe that hard work and study can bring us more opportunities.\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                         ),
                    )
                  ),
                  Expanded(
                    child: Container(
                      child: Image(
                        fit: BoxFit.scaleDown,
                        alignment: FractionalOffset.center,
                        image: AssetImage('6.jpg'),
                        height: 300,
                      ),

                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Image(
                        fit: BoxFit.scaleDown,
                        alignment: FractionalOffset.center,
                        image: AssetImage('7.jpg'),
                        height: 300,
                      ),
                    )
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                      'CSL - Wei Zhou\n\n'
                      '毕业于哈尔滨师范大学，拥有国内小学到大学的教师资格证。\n\n'
                      '毕业后在哈尔滨石油学院任教8年；2013年来美国，就职于charter school，从事中文及数学教学工作三年。2017年开始在Houston Dragon academy 中文学校任教\n\n'
                      'I graduated from Harbin Normal University. I have a teacher’s certificates for elementary school, middle school and higher education.\n\n'
                      'I have worked at the Harbin Petroleum University as a teacher for 8 years before I came to USA in 2013. Then I worked in a charter school to teach Mandarin Chinese and Mathematics for 3 years. After that, I started to work in Houston Dragon Academy to teach Chinese. Rewards：The first "Confucius Cup" Chinese proficiency competition, outstanding instructor.\n\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        '5th Grade - Hong Wu\n\n'
                        '东北师大77级本科、北师大教育学研究生、北京市重点高中示范校30年一线高级教师，教育部＂紫荆杯＂获得者，6年北美教学经验。系统的教育教学理念，丰富的教育教学经验，生动的教育教学方法，精讲精练突显实效的教学成绩，深受学生们的爱戴。\n\n'
                        'Undergraduate students of NENU, graduate student of Beijing Normal University,Beijing Key High School Model School 30 Years Senior Teacher, Ministry of Education "Bauhinia Cup" winner,6 years of North American teaching experience.\n\n'
                        'I believe that systematic teaching ideas, rich teaching experience, vivid teaching methods are needed by students, with that type of teaching resulting in practical results that are refined and respected.\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                      ),
                    )
                  ),
                  Expanded(
                    child: Container(
                      child: Image(
                        fit: BoxFit.scaleDown,
                        alignment: FractionalOffset.center,
                        image: AssetImage('8.jpg'),
                        height: 300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Image(
                        fit: BoxFit.scaleDown,
                        alignment: FractionalOffset.center,
                        image: AssetImage('9.jpg'),
                        height: 300,
                      ),
                    )
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '6th/7th - Lili Yang\n\n'
                        '取得中南大学硕士学位，在中南大学从事思政工作、心理教育工作五年。毕业于美国田纳西大学统计硕士专业，读书期间曾任本科生助教两年。\n\n'
                        '先后于诺克斯维尔教会中文学校、休斯敦第二浸信会私立高中任教，现任休斯顿龙学天下中文学校老师。在美国已有八年教学经验。尝试传统教学和数位教学相结合，探索着适合不同中文背景的学生学习中文的新方法。\n\n'
                        'Lili Yang, graduated from Center South University with a master degree. Since graduation, I had been engaged in virtue education and psychology education for undergraduate students for five years, winning the Award for Excellence in Teaching twice. While working as the teaching assistant during my Master’s study in the Department of Statistics of The University of Tennessee, I was also well received by the undergraduate students due to my great efforts. Since 2006, I had been teaching Chinese in such schools as the Chinese School of Knoxville Chinese Christian Church, the Chinese School of Houston Chinese Church, and the Upper School of the Second Baptist School Houston. Throughout the years, I explored and established a teaching mode combining traditional teaching with digital teaching，arousing my students’ interest in learning Chinese. With my teaching, my students were able to learn Chinese happily and effectively, and parents were pleased to support and cooperation. I am a teacher full of passion, affection and commitment.\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        '8th/9th Grade - Xueqin Yao\n\n'
                        '当一名光荣的老师，一直是我从孩提时就有的梦想。我坚持这一梦想，并实现了它。我开始在教会做BSF,CCF儿童同工义工，在私立学校做幼儿教师，在中文学校做中文老师，并积累了丰富的工作经验，受到了孩子们的喜爱。在这期间，我积极选修儿童教育课程，并顺利考到了美国CDA教师资格证书，实现了我的教师梦。我，有爱心有热情，也非常愿意继续我的教师梦！\n\n'
                        'When I was a child, my dream was to be a teacher. It was a hard choice to choose between being an accountant, which I excelled at, or to reach for my dreams. But when our family moved to America in 2016, I chose my childhood dream. So I volunteered in BSF, CCF in church. I worked as a teacher at the Chinese school. I managed to learn a lot about education this way. I love children and children love me too. During that time, I took children\'s education courses, eventually earning my CDA credential. I am a teacher now, and I have the love and passion to continue my Dream!\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                      ),
                    )
                  ),
                  Expanded(
                    child: Container(
                      child: Image(
                        fit: BoxFit.scaleDown,
                        alignment: FractionalOffset.center,
                        image: AssetImage('10.jpg'),
                        height: 300,
                      ),
                    ),
                  ),
                ],
              ),
            ),            Container(
              padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Image(
                        fit: BoxFit.scaleDown,
                        alignment: FractionalOffset.center,
                        image: AssetImage('11.jpg'),
                        height: 300,
                      ),
                    )
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Math - Ms.Meng\n\n'
                        '孟老师拥有物理教育硕士学位。 她拥有得克萨斯州的数学，物理和中文教师证书。 她在HISD高中教数学任职14年。\n\n'
                        'Ms. Meng has the master’s degree of physics education. She has Texas math, physics and Chinese teacher certificates. She has been teaching math in at an HISD high school for 14 years.\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Quicksand',height: 1.75, wordSpacing: 2.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
