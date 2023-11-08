import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_button.dart';

class IconWidget extends StatelessWidget {
  final IconConfig iconConfig;
  const IconWidget({super.key, required this.iconConfig});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: iconConfig.onTap,
      child: iconConfig.name.endsWith(".svg")
          ? SvgPicture.asset(
              iconConfig.name,
              color: iconConfig.color,
              height: iconConfig.height,
              width: iconConfig.width,
            )
          : Image.asset(
              iconConfig.name,
              color: iconConfig.color,
              height: iconConfig.height,
            ),
    );
  }
}
