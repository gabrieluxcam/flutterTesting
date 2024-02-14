import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/pages/mainPage.dart';
import 'package:flutter_ecommerce_app/src/config/route.dart'; // Assuming the package is in the project

import '../pages/mainPage.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => MainPage(
            title: 'Home',
          ),
      // '/detail': (_) => ProductDetailPage()
    };
  }
}
