import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../category_details/view/category_details_screen.dart';
import 'home_item.dart';

class SportAndFitness extends StatelessWidget {
  const SportAndFitness({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              child: HomeItem(
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
              child: HomeItem(
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
              child: HomeItem(
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
      ],
    );
  }
}
