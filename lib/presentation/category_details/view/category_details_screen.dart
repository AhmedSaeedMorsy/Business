// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/assets_manager.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';

import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../advert_by_type/view/advert_by_type_layout.dart';
import '../../company_profile/view/company_profile_screen.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedWidget.appBar(
        context: context,
        title: title,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / AppSize.s100,
          horizontal: MediaQuery.of(context).size.width / AppSize.s40,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  AppStrings.paidAd.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s80,
              ),
              SharedWidget.adsItem(),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              Text(
                AppStrings.seeAdvertByType.tr(),
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: ColorManager.black,
                    ),
              ),
              advertType(context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              Text(
                AppStrings.subcategories.tr(),
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: ColorManager.black,
                    ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: AppSize.s16.w,
                  mainAxisSpacing: AppSize.s10.h,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdvertByTypeLayout(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          AssetsManager.property,
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: ColorManager.greyWithOpacity,
                      borderRadius: BorderRadius.circular(
                        AppSize.s10,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical:
                            MediaQuery.of(context).size.height / AppSize.s80,
                        horizontal:
                            MediaQuery.of(context).size.width / AppSize.s50,
                      ),
                      child: Text(
                        "Name",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s30,
              ),
              Text(
                AppStrings.companies.tr(),
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: ColorManager.black,
                    ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: AppSize.s16.w,
                  mainAxisSpacing: AppSize.s10.h,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CompanyProfileScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            MediaQuery.of(context).size.width / AppSize.s80,
                        vertical:
                            MediaQuery.of(context).size.height / AppSize.s100),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.grey,
                          blurRadius: AppSize.s10.w,
                        )
                      ],
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(
                        AppSize.s10,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Image(
                              image: AssetImage(
                                AssetsManager.megaphone,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width /
                                  AppSize.s80,
                            ),
                            Text(
                              "3",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const Spacer(),
                            Icon(
                              Icons.visibility_outlined,
                              color: ColorManager.darkGrey,
                              size: AppSize.s14.w,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width /
                                  AppSize.s80,
                            ),
                            Text(
                              "328",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s80,
                        ),
                        CircleAvatar(
                          radius: AppSize.s30.w,
                          backgroundImage: const AssetImage(
                            AssetsManager.demoCompany,
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s80,
                        ),
                        Text(
                          "Name Company",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: ColorManager.black,
                                  ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s80,
                        ),
                        Text(
                          "Description",
                          style: Theme.of(context).textTheme.bodySmall,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / AppSize.s30)
            ],
          ),
        ),
      ),
    );
  }

  Widget advertType({
    required BuildContext context,
  }) {
    return Wrap(
      spacing: AppSize.s10.w,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AdvertByTypeLayout(),
              ),
            );
          },
          child: Chip(
            backgroundColor: ColorManager.lightGrey,
            label: const Text(
              "label",
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppSize.s8,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AdvertByTypeLayout(),
              ),
            );
          },
          child: Chip(
            backgroundColor: ColorManager.lightGrey,
            label: const Text(
              "second label",
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppSize.s8,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AdvertByTypeLayout(),
              ),
            );
          },
          child: Chip(
            backgroundColor: ColorManager.lightGrey,
            label: const Text(
              "Third label",
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppSize.s8,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AdvertByTypeLayout(),
              ),
            );
          },
          child: Chip(
            backgroundColor: ColorManager.lightGrey,
            label: const Text(
              "Forth label",
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppSize.s8,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
