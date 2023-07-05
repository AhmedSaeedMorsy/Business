// ignore_for_file: must_be_immutable
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/assets_manager.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';
import '../../../app/resources/routes_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../advert_by_type/view/advert_by_type_layout.dart';
import '../../category_details/view/category_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SharedWidget.sliderBanner(),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / AppSize.s30,
                horizontal: MediaQuery.of(context).size.width / AppSize.s20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.searchRoute,
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical:
                            MediaQuery.of(context).size.height / AppSize.s50,
                        horizontal:
                            MediaQuery.of(context).size.width / AppSize.s50,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppSize.s10,
                        ),
                        color: ColorManager.white,
                        boxShadow: [
                          BoxShadow(
                            color: ColorManager.grey,
                            blurRadius: AppSize.s5.w,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width / AppSize.s30,
                          ),
                          const Icon(
                            Icons.search_outlined,
                            color: ColorManager.grey,
                          ),
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width / AppSize.s30,
                          ),
                          Text(
                            AppStrings.searchAllAds.tr(),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.realEstate.tr(),
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
                        child: homeItem(
                          context: context,
                          text: AppStrings.property.tr(),
                          image: AssetsManager.property,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.property.tr(),
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
                          child: homeItem(
                              context: context,
                              text: AppStrings.lands.tr(),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryDetailsScreen(
                                      title: AppStrings.lands.tr(),
                                    ),
                                  ),
                                );
                              },
                              image: AssetsManager.lands)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / AppSize.s50,
                      ),
                      Expanded(
                        child: homeItem(
                          context: context,
                          text: AppStrings.furniture.tr(),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.furniture.tr(),
                                ),
                              ),
                            );
                          },
                          image: AssetsManager.furniture,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
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
                            homeItem(
                              context: context,
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
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            homeItem(
                              context: context,
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
                            homeItem(
                              context: context,
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
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: homeItem(
                                    context: context,
                                    text: AppStrings.offshoreTools.tr(),
                                    image: AssetsManager.offshoreTools,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title:
                                                AppStrings.offshoreTools.tr(),
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
                                  child: homeItem(
                                    context: context,
                                    text: AppStrings.heavyEquipment.tr(),
                                    image: AssetsManager.heavyEquipment,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title:
                                                AppStrings.heavyEquipment.tr(),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
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
                            homeItem(
                              context: context,
                              text: AppStrings.pesticidesAndPestControl.tr(),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AdvertByTypeLayout(),
                                  ),
                                );
                              },
                              image: AssetsManager.pesticidesAndPetControl,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            homeItem(
                              context: context,
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
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            homeItem(
                              context: context,
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
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            homeItem(
                              context: context,
                              text: AppStrings.gardeningAndAgriculture.tr(),
                              image: AssetsManager.plant,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryDetailsScreen(
                                      title: AppStrings.gardeningAndAgriculture
                                          .tr(),
                                    ),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            homeItem(
                                context: context,
                                text: AppStrings.commercialServices.tr(),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryDetailsScreen(
                                        title:
                                            AppStrings.commercialServices.tr(),
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
                                  child: homeItem(
                                    context: context,
                                    text: AppStrings.airConditioner.tr(),
                                    image: AssetsManager.airCondition,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title:
                                                AppStrings.airConditioner.tr(),
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
                                  child: homeItem(
                                    context: context,
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
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: homeItem(
                                    context: context,
                                    text: AppStrings.construction.tr(),
                                    image: AssetsManager.pilePerforatedBrick,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title: AppStrings.construction.tr(),
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
                                  child: homeItem(
                                    context: context,
                                    text: AppStrings.moveFurniture.tr(),
                                    image: AssetsManager.movingFurniture,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title:
                                                AppStrings.moveFurniture.tr(),
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
                            homeItem(
                              context: context,
                              text: AppStrings.decorAndInteriorDesign.tr(),
                              image: AssetsManager.decoration,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryDetailsScreen(
                                      title: AppStrings.decorAndInteriorDesign
                                          .tr(),
                                    ),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: homeItem(
                                    context: context,
                                    text: AppStrings.education.tr(),
                                    image: AssetsManager.education,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title: AppStrings.education.tr(),
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
                                  child: homeItem(
                                    context: context,
                                    text: AppStrings.sellingProjects.tr(),
                                    image: AssetsManager.buying,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title:
                                                AppStrings.sellingProjects.tr(),
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
                            homeItem(
                              context: context,
                              text: AppStrings.maintenanceServices.tr(),
                              image: AssetsManager.maintenance,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryDetailsScreen(
                                      title:
                                          AppStrings.maintenanceServices.tr(),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
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
                            homeItem(
                                context: context,
                                text: AppStrings.employers.tr(),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryDetailsScreen(
                                        title: AppStrings.employers.tr(),
                                      ),
                                    ),
                                  );
                                },
                                image: AssetsManager.employers),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            homeItem(
                                context: context,
                                text: AppStrings.menStuff.tr(),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryDetailsScreen(
                                        title: AppStrings.menStuff.tr(),
                                      ),
                                    ),
                                  );
                                },
                                image: AssetsManager.men),
                            SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            homeItem(
                                context: context,
                                text: AppStrings.foods.tr(),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryDetailsScreen(
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
                            homeItem(
                              context: context,
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
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: homeItem(
                                      context: context,
                                      text: AppStrings.womenStuff.tr(),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CategoryDetailsScreen(
                                              title: AppStrings.womenStuff.tr(),
                                            ),
                                          ),
                                        );
                                      },
                                      image: AssetsManager.wommen),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width /
                                      AppSize.s50,
                                ),
                                Expanded(
                                  child: homeItem(
                                      context: context,
                                      text: AppStrings.kidsStuff.tr(),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CategoryDetailsScreen(
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
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            homeItem(
                              context: context,
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  Center(
                    child: Text(
                      style: Theme.of(context).textTheme.bodySmall,
                      AppStrings.paidAd.tr(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  SharedWidget.adsItem(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
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
                            homeItem(
                              context: context,
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
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            homeItem(
                                context: context,
                                text: AppStrings.homeAppliance.tr(),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryDetailsScreen(
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
                            homeItem(
                              context: context,
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
                              height: MediaQuery.of(context).size.height /
                                  AppSize.s80,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: homeItem(
                                    context: context,
                                    text: AppStrings.cameraAndVideos.tr(),
                                    image: AssetsManager.cameraAndVideos,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title:
                                                AppStrings.cameraAndVideos.tr(),
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
                                  child: homeItem(
                                    context: context,
                                    text: AppStrings.electronicGames.tr(),
                                    image: AssetsManager.electronicGames,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryDetailsScreen(
                                            title:
                                                AppStrings.electronicGames.tr(),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          AppStrings.sportAndFitness.tr(),
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
                        child: homeItem(
                          context: context,
                          text: AppStrings.health.tr(),
                          image: AssetsManager.health,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.health.tr(),
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
                        child: homeItem(
                            context: context,
                            text: AppStrings.sportAndFitness.tr(),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryDetailsScreen(
                                    title: AppStrings.sportAndFitness.tr(),
                                  ),
                                ),
                              );
                            },
                            image: AssetsManager.sportAndFitness),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / AppSize.s50,
                      ),
                      Expanded(
                        child: homeItem(
                          context: context,
                          text: AppStrings.smartAndBicycle.tr(),
                          image: AssetsManager.smartAndBicycle,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.smartAndBicycle.tr(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          AppStrings.travelAndTrips.tr(),
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
                        child: homeItem(
                          context: context,
                          text: AppStrings.tourism.tr(),
                          image: AssetsManager.airplan,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.tourism.tr(),
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
                        flex: 2,
                        child: homeItem(
                            context: context,
                            text: AppStrings.tripAndCamping.tr(),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryDetailsScreen(
                                    title: AppStrings.tripAndCamping.tr(),
                                  ),
                                ),
                              );
                            },
                            image: AssetsManager.camping),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  Center(
                    child: Text(
                      style: Theme.of(context).textTheme.bodySmall,
                      AppStrings.paidAd.tr(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  SharedWidget.adsItem(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          AppStrings.animalsAndBirds.tr(),
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
                        child: homeItem(
                          context: context,
                          text: AppStrings.horsesSheepAndCamels.tr(),
                          image: AssetsManager.camal,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.horsesSheepAndCamels.tr(),
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
                        child: homeItem(
                          context: context,
                          text: AppStrings.otherAnimals.tr(),
                          image: AssetsManager.rabbit,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.otherAnimals.tr(),
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
                        child: homeItem(
                          context: context,
                          text: AppStrings.birds.tr(),
                          image: AssetsManager.bird,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailsScreen(
                                  title: AppStrings.birds.tr(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  Row(
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
                            homeItem(
                              context: context,
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
                            homeItem(
                                context: context,
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
                                  child: homeItem(
                                    context: context,
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
                                  child: homeItem(
                                    context: context,
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
                            homeItem(
                              context: context,
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget homeItem({
    required BuildContext context,
    required String text,
    String? image,
    required Function() onTap,
  }) =>
      InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / AppSize.s50,
            vertical: MediaQuery.of(context).size.height / AppSize.s70,
          ),
          height: AppSize.s150.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppSize.s10.w,
            ),
            image: DecorationImage(
              image: AssetImage(
                image ?? AssetsManager.camal,
              ),
              fit: BoxFit.fill,
            ),
            color: ColorManager.grey,
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      );
}
