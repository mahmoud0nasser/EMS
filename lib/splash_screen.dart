import 'package:center_system/utils/app_assets.dart';
import 'package:center_system/utils/app_strings.dart';
import 'package:center_system/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'utils/app_colors.dart';

class SplahScreen extends StatelessWidget {
  const SplahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(
              imgPath: AppAssets.appLogo,
              h: 120.h,
              w: 120.w,
            ),
            // Hi Ali
            /* SizedBox(
              height: 120.h,
              width: 120.w,
              child: Image.asset(
                AppAssets.appLogo,
              ),
            ), */
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppStrings.chefApp,
              // 'Chef App',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: AppColors.white,
                    fontSize: 30.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}