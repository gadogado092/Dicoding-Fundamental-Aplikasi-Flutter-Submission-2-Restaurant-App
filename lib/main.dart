import 'package:flutter/material.dart';
import 'package:restaurant_app/res/colors.dart';
import 'package:restaurant_app/routes/route_paths.dart';
import 'package:restaurant_app/screens/detail_restaurant_page.dart';
import 'package:restaurant_app/screens/home_page.dart';
import 'package:restaurant_app/screens/search_restaurant_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: RestaurantColors.PRIMARY_COLOR,
        accentColor: RestaurantColors.ACCENT_COLOR,
      ),
      initialRoute: homePageRoute,
      routes: {
        homePageRoute: (context) => HomePage(),
        searchRestaurantPageRoute: (context) => SearchRestaurant(),
        detailRestaurantPageRoute: (context) => DetailRestaurant(
            restaurant: ModalRoute.of(context).settings.arguments)
      },
    );
  }
}
