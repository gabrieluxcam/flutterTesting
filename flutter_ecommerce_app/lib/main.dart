import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/config/route.dart';
import 'package:flutter_ecommerce_app/src/pages/mainPage.dart';
import 'package:flutter_ecommerce_app/src/pages/product_detail.dart';
import 'package:flutter_ecommerce_app/src/widgets/customRoute.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/themes/theme.dart';

// import 'package:flutter_uxcam/flutter_uxcam.dart';

void main() => runApp(MyApp(
      title: 'ecommerce',
    ));

final key = UniqueKey();

class MyApp extends StatelessWidget {
final String title;

  const MyApp({required this.title});

  @override
  Widget build(BuildContext context) {
    // FlutterUxcam.optIntoSchematicRecordings();
    // FlutterUxConfig config = FlutterUxConfig(
    //     userAppKey: "djazkur7hg5icjx", enableAutomaticScreenNameTagging: false);
    // FlutterUxcam.startWithConfiguration(config);
    return MaterialApp(
      title: 'flutter_ecommerce_app',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name!.contains('detail')) {
          return CustomRoute<bool>(
              builder: (BuildContext context) => ProductDetailPage());
        } else {
          return CustomRoute<bool>(
              builder: (BuildContext context) => MainPage(
                    title: 'MainPage',
                  ));
        }
      },
      initialRoute: "MainPage",
    );
  }
}
