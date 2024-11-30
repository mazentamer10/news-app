import 'package:flutter/material.dart';
import 'package:news/core/utils/colors_manager.dart';
import 'package:news/core/utils/assets_manager.dart';
import 'package:news/prestion/screens/home/tabs/settings/settings.dart';
import 'home_drawer/home_Drawer.dart';
import 'tabs/categories/categores.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget selectedWidget = Categories();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: ColorsManager.white,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(AssetsManager.bgPattern))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
        ),
        drawer: HomeDrawer(
          onMenuItemClicked: onMenuItemClicked,
        ),
        body: selectedWidget,
      ),
    );
  }

  void onMenuItemClicked(MenuItem item) {
    switch (item) {
      case MenuItem.categories:
        selectedWidget = Categories();
      case MenuItem.settings:
        selectedWidget = Settings();
    }
    Navigator.pop(context);
    setState(() {});
  }
}