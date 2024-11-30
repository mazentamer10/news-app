import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news/core/utils/assets_manager.dart';
import 'package:news/core/utils/colors_manager.dart';
import 'package:news/core/utils/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
        Navigator.pushReplacementNamed(context, RoutesManager.home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            color: ColorsManager.white,
            child: Image.asset(
              AssetsManager.bgPattern,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              AssetsManager.splashLogo,
              width: 199.w,
              height: 208.h,
            ),
          ],
        )
      ],
    );
  }
}
