import 'package:archer_flutter_ui/constants/constants.dart';
import 'package:archer_flutter_ui/models/datamodel/navbar_item_model.dart';
import 'package:archer_flutter_ui/stacked/locator.dart';
import 'package:archer_flutter_ui/stacked/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          _NavigationDrawerHeader(),
          _DrawerItem(title: 'Campus', icon: Icons.mouse, navigationPath: Routes.campusPage),
          _DrawerItem(title: 'About', icon: Icons.help, navigationPath: Routes.aboutPage),
          _DrawerItem(title: 'Classes', icon: Icons.work, navigationPath: Routes.coursePage),
        ],
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;
  const _DrawerItem({this.title, this.navigationPath, this.icon});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );

    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(
            width: 30,
          ),
          GestureDetector(
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
          ),
        ],
      ),
    );
  }
}

class _NavigationDrawerHeader extends StatelessWidget {
  const _NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'SKILL UP NOW',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          Text(
            'TAP HERE',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}