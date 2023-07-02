// ignore_for_file: library_private_types_in_public_api

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import 'my_ads_state_screen.dart';

class MyAdsLayoutScreen extends StatefulWidget {
  const MyAdsLayoutScreen({super.key});

  @override
  _MyAdsLayoutScreenState createState() => _MyAdsLayoutScreenState();
}

class _MyAdsLayoutScreenState extends State<MyAdsLayoutScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          isScrollable: true,
          indicator: BoxDecoration(
            color: ColorManager.primaryColorBlue,
            borderRadius: BorderRadius.circular(
              AppSize.s20.w,
            ),
          ),
          physics: const BouncingScrollPhysics(),
          unselectedLabelColor: ColorManager.black,
          labelColor: ColorManager.white,
          labelPadding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / AppSize.s80),
          labelStyle: Theme.of(context).textTheme.bodyMedium,
          tabs: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / AppSize.s50,
              ),
              child: Tab(
                text: AppStrings.active.tr(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / AppSize.s50,
              ),
              child: Tab(
                text: AppStrings.favorites.tr(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / AppSize.s50,
              ),
              child: Tab(
                text: AppStrings.commented.tr(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / AppSize.s50,
              ),
              child: Tab(
                text: AppStrings.liked.tr(),
              ),
            ),
          ],
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        SizedBox(
          height: AppSize.s100.h,
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: const [
              MyAdsStateScreen(),
              MyAdsStateScreen(),
              MyAdsStateScreen(),
              MyAdsStateScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
