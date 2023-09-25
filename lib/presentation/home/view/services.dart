import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../advert_by_type/view/advert_by_type_layout.dart';
import '../../category_details/view/category_details_screen.dart';
import 'home_item.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                AppStrings.services.tr(),
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
                    text: AppStrings.pesticidesAndPestControl.tr(),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdvertByTypeLayout(),
                        ),
                      );
                    },
                    image: AssetsManager.pesticidesAndPetControl,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                    text: AppStrings.occasions.tr(),
                    image: AssetsManager.occasions,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.occasions.tr(),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                    text: AppStrings.transportSRV.tr(),
                    image: AssetsManager.yellowTax,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.transportSRV.tr(),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                    text: AppStrings.gardeningAndAgriculture.tr(),
                    image: AssetsManager.plant,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.gardeningAndAgriculture.tr(),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                      text: AppStrings.commercialServices.tr(),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryDetailsScreen(
                              title: AppStrings.commercialServices.tr(),
                            ),
                          ),
                        );
                      },
                      image: AssetsManager.commercial),
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
                          text: AppStrings.airConditioner.tr(),
                          image: AssetsManager.airCondition,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.airConditioner.tr(),
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
                          text: AppStrings.cleaningServices.tr(),
                          image: AssetsManager.cleaningServices,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AdvertByTypeLayout(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: HomeItem(
                          text: AppStrings.construction.tr(),
                          image: AssetsManager.pilePerforatedBrick,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.construction.tr(),
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
                          text: AppStrings.moveFurniture.tr(),
                          image: AssetsManager.movingFurniture,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.moveFurniture.tr(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                    text: AppStrings.decorAndInteriorDesign.tr(),
                    image: AssetsManager.decoration,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.decorAndInteriorDesign.tr(),
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
                          text: AppStrings.education.tr(),
                          image: AssetsManager.education,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.education.tr(),
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
                          text: AppStrings.sellingProjects.tr(),
                          image: AssetsManager.buying,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.sellingProjects.tr(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  HomeItem(
                    text: AppStrings.maintenanceServices.tr(),
                    image: AssetsManager.maintenance,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen(
                            title: AppStrings.maintenanceServices.tr(),
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
