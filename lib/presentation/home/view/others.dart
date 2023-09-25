import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../category_details/view/category_details_screen.dart';
import 'home_item.dart';

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          AppStrings.others.tr(),
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
                              text: AppStrings.specialCoins.tr(),
                              image: AssetsManager.coins,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryDetailsScreen(
                                      title: AppStrings.specialCoins.tr(),
                                    ),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            HomeItem(
                                text: AppStrings.inquires.tr(),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryDetailsScreen(
                                        title: AppStrings.inquires.tr(),
                                      ),
                                    ),
                                  );
                                },
                                image: AssetsManager.inquires),
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
                            Row(
                              children: [
                                Expanded(
                                  child: HomeItem(
                                    text: AppStrings.antiques.tr(),
                                    image: AssetsManager.antiques,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title: AppStrings.antiques.tr(),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width /
                                      AppSize.s50,
                                ),
                                Expanded(
                                  child: HomeItem(
                                    text: AppStrings.charity.tr(),
                                    image: AssetsManager.charitable,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title: AppStrings.charity.tr(),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            HomeItem(
                              text: AppStrings.others.tr(),
                              image: AssetsManager.book,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryDetailsScreen(
                                      title: AppStrings.others.tr(),
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
