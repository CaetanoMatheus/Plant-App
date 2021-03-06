import 'package:flutter/material.dart';

import 'package:plant_app/screens/home/components/header.dart';
import 'package:plant_app/screens/home/components/main.dart';
import 'package:plant_app/screens/home/styles/home_screen_styles.dart';
import 'package:plant_app/utils/image_resolver.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Main(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        padding: HomeScreenStyles.bottomNavigationBarPadding(),
        decoration: HomeScreenStyles.bottomNavigationBar(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: ImageResolver.icon('flower'), onPressed: () {}),
            IconButton(icon: ImageResolver.icon('heart'), onPressed: () {}),
            IconButton(icon: ImageResolver.icon('user'), onPressed: () {}),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: ImageResolver.icon('menu'),
        onPressed: () {},
      ),
    );
  }
}
