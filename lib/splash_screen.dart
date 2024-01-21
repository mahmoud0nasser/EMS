import 'package:center_system/core/utils/app_assets.dart';
import 'package:center_system/core/utils/app_strings.dart';
import 'package:center_system/core/widgets/custom_image.dart';
import 'package:flutter/material.dart';

import 'core/utils/app_colors.dart';

class SplahScreenx extends StatelessWidget {
  const SplahScreenx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomImage(
              imgPath: AppAssets.appLogo,
              h: 120,
              w: 120,
            ),
            Text(
              AppStrings.chefApp,
              // 'Chef App',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
