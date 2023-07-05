import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

import 'my_ads_layout_screen.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s30,
          vertical: MediaQuery.of(context).size.height / AppSize.s60,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: AppSize.s36.w,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / AppSize.s16,
                  ),
                  Column(
                    children: [
                      Text(
                        AppStrings.followers.tr(),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: ColorManager.black,
                            ),
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height / AppSize.s80,
                      ),
                      Text(
                        "0",
                        style: Theme.of(context).textTheme.displayLarge,
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / AppSize.s10,
                  ),
                  Column(
                    children: [
                      Text(
                        AppStrings.following.tr(),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: ColorManager.black,
                            ),
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height / AppSize.s80,
                      ),
                      Text(
                        "0",
                        style: Theme.of(context).textTheme.displayLarge,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s40,
              ),
              Text(
                "Description Details",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s80,
              ),
              Text(
                "+201023556253",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s60,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width / AppSize.s40,
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s60,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.s10,
                      ),
                      border: Border.all(
                        color: ColorManager.darkGrey,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          size: AppSize.s16.w,
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s60,
                        ),
                        Text(
                          AppStrings.share.tr(),
                          style: Theme.of(context).textTheme.displaySmall,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / AppSize.s60,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width / AppSize.s40,
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s60,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.s10,
                      ),
                      border: Border.all(
                        color: ColorManager.darkGrey,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit_outlined,
                          size: AppSize.s16.w,
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s80,
                        ),
                        Text(
                          AppStrings.edit.tr(),
                          style: Theme.of(context).textTheme.displaySmall,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              const MyAdsLayoutScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
