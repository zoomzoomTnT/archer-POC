import 'package:archer_flutter_ui/models/datamodel/navbar_item_model.dart';
import 'package:archer_flutter_ui/stacked/locator.dart';
import 'package:archer_flutter_ui/stacked/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked_services/stacked_services.dart';


class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _NavigationBarMobile(),
      tablet: _NavigationBarTabletDesktop(),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;
  const _NavBarItem({this.title, this.navigationPath, this.icon});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class _NavBarLogo extends StatelessWidget {
  const _NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().back();
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: Image.asset('../../web/icons/logo.png'),
      ),
    );
  }
}

class _NavigationBarMobile extends StatelessWidget {
  const _NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          _NavBarLogo(),
        ],
      ),
    );
  }
}

class _NavigationBarTabletDesktop extends StatelessWidget {
  const _NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _NavBarItem(title: 'Campus', navigationPath: Routes.campusPage),
                SizedBox(
                  width: 60,
                ),
                _NavBarItem(title: 'About', navigationPath: Routes.aboutPage),
                SizedBox(
                  width: 60,
                ),
                _NavBarItem(title: 'Classes', navigationPath: Routes.coursePage),
                SizedBox(
                  width: 60,
                ),
                _NavBarItem(title: 'Login', navigationPath: Routes.signinPage),
                SizedBox(
                  width: 60,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}