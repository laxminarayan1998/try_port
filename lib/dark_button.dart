import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'theme_controller.dart';

class DarkButton extends StatelessWidget {
  final ThemeController themeController = Get.find();
  final Animation? iconColorTween;
  DarkButton({
    Key? key,
    this.iconColorTween,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        'assets/icons/Icon awesome-moon.svg',
        color: iconColorTween!.value,
      ),
      onPressed: () {
        if (themeController.isDark.value) {
          themeController.isDark.value = false;
          Get.changeThemeMode(ThemeMode.light);
        } else {
          themeController.isDark.value = true;
          Get.changeThemeMode(ThemeMode.dark);
          //new
        }
      },
    );
  }
}
