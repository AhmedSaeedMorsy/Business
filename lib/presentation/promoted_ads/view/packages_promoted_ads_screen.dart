import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/font_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

import '../../../app/common/widget.dart';
import '../../../app/constant/enums_extentions.dart';
import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/color_manager.dart';

class PackagePromotedAdsScreen extends StatelessWidget {
  const PackagePromotedAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.promotedAds.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s40,
          vertical: MediaQuery.of(context).size.width / AppSize.s60,
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / AppSize.s80,
                  horizontal: MediaQuery.of(context).size.width / AppSize.s40,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.chooseTypeOfPromotedAd.tr(),
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s60,
                            ),
                            Row(
                              children: [
                                Radio(
                                  activeColor: ColorManager.primaryColorGreen,
                                  value: PackageEnum.gold,
                                  groupValue: null,
                                  onChanged: (value) {},
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Image(
                                        width: AppSize.s42.w,
                                        image: const AssetImage(
                                            AssetsManager.gold),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                AppSize.s40,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppStrings.gold.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge,
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  AppSize.s80,
                                            ),
                                            Text(
                                              AppStrings.goldHint.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s50,
                            ),
                            Row(
                              children: [
                                Radio(
                                  activeColor: ColorManager.primaryColorGreen,
                                  value: PackageEnum.silver,
                                  groupValue: null,
                                  onChanged: (value) {},
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Image(
                                        width: AppSize.s42.w,
                                        image: const AssetImage(
                                            AssetsManager.silver),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                AppSize.s40,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppStrings.silver.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge,
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  AppSize.s80,
                                            ),
                                            Text(
                                              AppStrings.silverHint.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: MediaQuery.of(context).size.height /
                                    AppSize.s40,
                              ),
                              child: Container(
                                width: double.infinity,
                                color: ColorManager.grey,
                                height: AppSize.s1.h,
                              ),
                            ),
                            Text(
                              AppStrings.chooseNumberOfDays.tr(),
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s60,
                            ),
                            SizedBox(
                              height: AppSize.s140.w,
                              child: ListView.separated(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                    numberOfDaysItem(context: context),
                                separatorBuilder: (context, index) => SizedBox(
                                  width: MediaQuery.of(context).size.width /
                                      AppSize.s50,
                                ),
                                itemCount: 3,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: MediaQuery.of(context).size.height /
                                    AppSize.s40,
                              ),
                              child: Container(
                                width: double.infinity,
                                color: ColorManager.grey,
                                height: AppSize.s1.h,
                              ),
                            ),
                            Text(
                              AppStrings.chooseNumberOfFeaturedAdsPlans.tr(),
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s60,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Slider(
                                    activeColor: ColorManager.primaryColorGreen,
                                    thumbColor: ColorManager.primaryColorGreen,
                                    inactiveColor: ColorManager.grey,
                                    value: 10,
                                    max: 99,
                                    min: 1,
                                    onChanged: (double value) {},
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width /
                                      AppSize.s60,
                                ),
                                Text(
                                  "10",
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: MediaQuery.of(context).size.height /
                                    AppSize.s40,
                              ),
                              child: Container(
                                width: double.infinity,
                                color: ColorManager.grey,
                                height: AppSize.s1.h,
                              ),
                            ),
                            Text(
                              AppStrings.summary.tr(),
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppStrings.typeOfPlan.tr(),
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                                Text(
                                  "Gold",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: FontSizeManager.s16.sp,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: MediaQuery.of(context).size.height /
                                    AppSize.s40,
                              ),
                              child: Container(
                                width: double.infinity,
                                color: ColorManager.grey,
                                height: AppSize.s1.h,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppStrings.viewsYouWillGet.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge,
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                AppSize.s80,
                                      ),
                                      Text(
                                        AppStrings.viewsYouWillGetDesc.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "x20",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: FontSizeManager.s16.sp,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: MediaQuery.of(context).size.height /
                                    AppSize.s40,
                              ),
                              child: Container(
                                width: double.infinity,
                                color: ColorManager.grey,
                                height: AppSize.s1.h,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppStrings.numberOfDays.tr(),
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                                Text(
                                  "1",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: FontSizeManager.s16.sp,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: MediaQuery.of(context).size.height /
                                    AppSize.s40,
                              ),
                              child: Container(
                                width: double.infinity,
                                color: ColorManager.grey,
                                height: AppSize.s1.h,
                              ),
                            ),
                            Text(
                              AppStrings.numberOfViewsISApproximate.tr(),
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s60,
                            ),
                            Text(
                              AppStrings.byPurchasingTheService.tr(),
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom:
                            MediaQuery.of(context).size.height / AppSize.s40,
                      ),
                      child: Container(
                        width: double.infinity,
                        color: ColorManager.grey,
                        height: AppSize.s1.h,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.totalPrice.tr(),
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height /
                                    AppSize.s120,
                              ),
                              Text(
                                "8000",
                                style: Theme.of(context).textTheme.displayLarge,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: SharedWidget.defaultButton(
                            context: context,
                            function: () {},
                            text: AppStrings.buyNow.tr(),
                            backgroundColor: ColorManager.primaryColorGreen,
                            style: Theme.of(context).textTheme.bodyMedium!,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget numberOfDaysItem({
    required BuildContext context,
  }) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / AppSize.s40,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / AppSize.s20,
              horizontal: MediaQuery.of(context).size.width / AppSize.s10,
            ),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(
                AppSize.s10.w,
              ),
            ),
            child: Column(
              children: [
                Text(
                  "100",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s80,
                ),
                Text(
                  "EGP/day",
                  style: Theme.of(context).textTheme.displaySmall,
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / AppSize.s100,
            horizontal: MediaQuery.of(context).size.width / AppSize.s30,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppSize.s50,
            ),
            border: Border.all(),
            color: ColorManager.white,
          ),
          child: Text(
            "1 day",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
      ],
    );
  }
}
