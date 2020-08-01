import 'package:archer_flutter_ui/routing/router.dart';
import 'package:archer_flutter_ui/services/navigation_service.dart';
import 'package:archer_flutter_ui/widgets/nav_bar.dart';
import 'package:archer_flutter_ui/widgets/nav_draw.dart';
import 'package:archer_flutter_ui/widgets/page_banner.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
            resizeToAvoidBottomPadding: false,
            drawer:
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? NavigationDrawer()
                    : null,
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          NavigationBar(),
                          PageBanner(['assets/page_banner.jpeg']),
                          Container(
                            height: 1000.0,
                            alignment: Alignment.center,
                            child: Navigator(
                              key: locator<NavigationService>().navigatorKey,
                              onGenerateRoute: generateRoute,
                              initialRoute: 'home',
                            ),
                          ),
                        ]),
                  ),
                );
              },
            )));
//    return ResponsiveBuilder(
//        builder: (context, sizingInformation) =>
//            Scaffold(
//              resizeToAvoidBottomPadding: false,
//              drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
//                  ? NavigationDrawer()
//                  : null,
//              body: Column(
//                mainAxisSize: MainAxisSize.min,
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  NavigationBar(),
//                  PageBanner(['assets/page_banner.jpeg']),
//                  Expanded(
//                    child: Navigator(
//                      key: locator<NavigationService>().navigatorKey,
//                      onGenerateRoute: generateRoute,
//                      initialRoute: 'home',
//                    ),
//                  ),
//                ],
//              ),
//            )
//    );
  }
}
