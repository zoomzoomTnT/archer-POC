import 'package:flutter/material.dart';
import 'dart:html' as html;
extension HoverExtensions on StatelessWidget {
  // Get a reference to the body of the view
  static final appContainer = html.document.getElementsByTagName('body')[0] as html.Element;
  //static final appContainer = html.window.document.getElementById('app-container');
  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      // When the mouse enters the widget set the cursor to pointer
      onEnter: (event) {
        appContainer.style.cursor = 'pointer';

      },
      // When it exits set it back to default
      onExit: (event) {
        appContainer.style.cursor = 'default';
      },
    );
  }
}