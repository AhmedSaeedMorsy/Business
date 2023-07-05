import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/assets_manager.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

import '../../../app/resources/strings_manager.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          style: Theme.of(context).textTheme.displayLarge,
          AppStrings.aboutBusiness.tr(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s12,
          vertical: MediaQuery.of(context).size.height / AppSize.s60,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: AppSize.s120.w,
                        height: AppSize.s120.w,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AssetsManager.splash,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(
                            AppSize.s10.w,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s40,
                    ),
                    Text(
                      AppStrings.aboutBusinessContent1.tr(),
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.aboutBusinessContent2.tr(),
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.aboutBusinessContent3.tr(),
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.productBy.tr(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s60,
                    ),
                    Image(
                      width: AppSize.s100.w,
                      height: AppSize.s50.h,
                      image: const AssetImage(
                        AssetsManager.lineGroup,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s60,
            ),
            SharedWidget.defaultButton(
              context: context,
              function: () {},
              text: AppStrings.visitBusiness.tr(),
              backgroundColor: ColorManager.primaryColorGreen,
              style: Theme.of(context).textTheme.displayLarge!,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s60,
            ),
            SharedWidget.defaultButton(
              context: context,
              function: () {},
              text: AppStrings.contactBusiness.tr(),
              backgroundColor: ColorManager.primaryColorBlue,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: ColorManager.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
