import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';
import '../../../app/resources/routes_manager.dart';

class PromotedAdsScreen extends StatelessWidget {
  const PromotedAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.promotedAds.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / AppSize.s80,
          horizontal: MediaQuery.of(context).size.width / AppSize.s40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SharedWidget.defaultButton(
              context: context,
              function: () {
                Navigator.pushNamed(
                  context,
                  Routes.chooseCategoryPromotedRoute,
                );
              },
              text: AppStrings.buyANewPlan.tr(),
              backgroundColor: ColorManager.primaryColorGreen,
              style: Theme.of(context).textTheme.bodyMedium!,
            ),
          ],
        ),
      ),
    );
  }
}
