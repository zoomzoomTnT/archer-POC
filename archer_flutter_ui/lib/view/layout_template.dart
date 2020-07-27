import 'package:archer_flutter_ui/routing/router.dart';
import 'package:archer_flutter_ui/services/navigation_service.dart';
import 'package:archer_flutter_ui/widgets/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) =>
            Scaffold(
              drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
                  ? NavigationDrawer()
                  : null,
              body: Center(
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: Column(
                  // Column is also a layout widget. It takes a list of children and
                  // arranges them vertically. By default, it sizes itself to fit its
                  // children horizontally, and tries to be as tall as its parent.
                  //
                  // Invoke "debug painting" (press "p" in the console, choose the
                  // "Toggle Debug Paint" action from the Flutter Inspector in Android
                  // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                  // to see the wireframe for each widget.
                  //
                  // Column has various properties to control how it sizes itself and
                  // how it positions its children. Here we use mainAxisAlignment to
                  // center the children vertically; the main axis here is the vertical
                  // axis because Columns are vertical (the cross axis would be
                  // horizontal).
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NavigationBar(),
                    Expanded(
                      child: Navigator(
                        key: locator<NavigationService>().navigatorKey,
                        onGenerateRoute: generateRoute,
                        initialRoute: 'home',
                      ),
                    ),
//                    Text(
//                      'You have pushed the button this many times:',
//                    ),
//                    Text(
//                      '$_counter',
//                      style: Theme.of(context).textTheme.headline4,
//                    ),
                  ],
                ),
              ),
//              floatingActionButton: FloatingActionButton(
//                onPressed: _incrementCounter,
//                tooltip: 'Increment',
//                child: Icon(Icons.wifi_tethering),
//              ), // This trailing comma makes auto-formatting nicer for build methods.
            )
    );
  }
}