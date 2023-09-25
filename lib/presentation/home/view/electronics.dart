import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../category_details/view/category_details_screen.dart';
import 'home_item.dart';

class Electronics extends StatelessWidget {
  const Electronics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                AppStrings.electronics.tr(),
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
                    text: AppStrings.mobiles.tr(),
                    image: AssetsManager.mobiles,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.mobiles.tr(),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                      text: AppStrings.homeAppliance.tr(),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryDetailsScreen(
                              title: AppStrings.homeAppliance.tr(),
                            ),
                          ),
                        );
                      },
                      image: AssetsManager.homeAppliance),
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
                    text: AppStrings.electronics.tr(),
                    image: AssetsManager.electronics,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.electronics.tr(),
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
                          text: AppStrings.cameraAndVideos.tr(),
                          image: AssetsManager.cameraAndVideos,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.cameraAndVideos.tr(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / AppSize.s50,
                      ),
                      Expanded(
                        child: HomeItem(
                          text: AppStrings.electronicGames.tr(),
                          image: AssetsManager.electronicGames,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.electronicGames.tr(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
