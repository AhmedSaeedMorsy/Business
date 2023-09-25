import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../category_details/view/category_details_screen.dart';
import 'home_item.dart';

class AnimalsAndBirds extends StatelessWidget {
  const AnimalsAndBirds({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              child: HomeItem(
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
              child: HomeItem(
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
              child: HomeItem(
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
      ],
    );
  }
}
