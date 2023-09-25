import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../category_details/view/category_details_screen.dart';
import 'home_item.dart';

class Vehicles extends StatelessWidget {
  const Vehicles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.vehicles.tr(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              "2352 ${AppStrings.ads.tr()}",
              style: Theme.of(context).textTheme.bodySmall,
            )
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
                    text: AppStrings.motorcycles.tr(),
                    image: AssetsManager.motorcycles,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.motorcycles.tr(),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                    text: AppStrings.spareParts.tr(),
                    image: AssetsManager.spare,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.spareParts.tr(),
                          ),
                        ),
                      );
                    },
                  ),
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
                    text: AppStrings.cars.tr(),
                    image: AssetsManager.cars,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.cars.tr(),
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
                          text: AppStrings.offshoreTools.tr(),
                          image: AssetsManager.offshoreTools,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.offshoreTools.tr(),
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
                          text: AppStrings.heavyEquipment.tr(),
                          image: AssetsManager.heavyEquipment,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.heavyEquipment.tr(),
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
