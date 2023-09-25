// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/common/widget.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/routes_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import 'animals_and_birds.dart';
import 'electronics.dart';
import 'family_needs.dart';
import 'others.dart';
import 'real_estate.dart';
import 'services.dart';
import 'sport_and_fitness.dart';
import 'travel_and_trips.dart';
import 'vehicles.dart';

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
                  const RealEState(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  const Vehicles(),
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
                  const Services(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  const FamilyNeeds(),
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
                  const Electronics(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  const SportAndFitness(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  const TravelAndTrips(),
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
                  const AnimalsAndBirds(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  const Others(),
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
}
