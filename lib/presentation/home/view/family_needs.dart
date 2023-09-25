import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../category_details/view/category_details_screen.dart';
import 'home_item.dart';

class FamilyNeeds extends StatelessWidget {
  const FamilyNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                AppStrings.familyNeeds.tr(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Text(
              "2352 ${AppStrings.ads.tr()}",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / AppSize.s50,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  HomeItem(
                      text: AppStrings.employers.tr(),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryDetailsScreen(
                              title: AppStrings.employers.tr(),
                            ),
                          ),
                        );
                      },
                      image: AssetsManager.employers),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                      text: AppStrings.menStuff.tr(),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryDetailsScreen(
                              title: AppStrings.menStuff.tr(),
                            ),
                          ),
                        );
                      },
                      image: AssetsManager.men),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                      text: AppStrings.foods.tr(),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryDetailsScreen(
                              title: AppStrings.foods.tr(),
                            ),
                          ),
                        );
                      },
                      image: AssetsManager.foods),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / AppSize.s50,
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  HomeItem(
                    text: AppStrings.jobApplicats.tr(),
                    image: AssetsManager.jopApplicants,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.jobApplicats.tr(),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: HomeItem(
                            text: AppStrings.womenStuff.tr(),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryDetailsScreen(
                                    title: AppStrings.womenStuff.tr(),
                                  ),
                                ),
                              );
                            },
                            image: AssetsManager.wommen),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / AppSize.s50,
                      ),
                      Expanded(
                        child: HomeItem(
                            text: AppStrings.kidsStuff.tr(),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryDetailsScreen(
                                    title: AppStrings.kidsStuff.tr(),
                                  ),
                                ),
                              );
                            },
                            image: AssetsManager.kids),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                    text: AppStrings.gifts.tr(),
                    image: AssetsManager.gifts,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.gifts.tr(),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
