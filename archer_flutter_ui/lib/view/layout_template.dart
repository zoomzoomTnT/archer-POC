import 'package:archer_flutter_ui/stacked/locator.dart';
import 'package:archer_flutter_ui/stacked/router.gr.dart';
import 'package:archer_flutter_ui/widgets/footer_bar.dart';
import 'package:archer_flutter_ui/widgets/nav_bar.dart';
import 'package:archer_flutter_ui/widgets/nav_draw.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked_services/stacked_services.dart';


class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? NavigationDrawer()
              : null,
          body: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  NavigationBar(),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 700),
                    child: Navigator(
                      key: locator<NavigationService>().navigatorKey,
                      onGenerateRoute: Router().onGenerateRoute,
                      initialRoute: Routes.homePage,
                    ),
                  ),
                  FooterBar(),
                ]),
          ),
        ));
  }
}
