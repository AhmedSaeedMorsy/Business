import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/constant/enums_extentions.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import 'packages_promoted_ads_screen.dart';

class ChooseCategoryPromotedScreen extends StatelessWidget {
  const ChooseCategoryPromotedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.chooseCategory.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / AppSize.s60,
          horizontal: MediaQuery.of(context).size.width / AppSize.s40,
        ),
        child: Column(
          children: [
            Text(
              AppStrings.chooseCategoryPromoted.tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => categoryItem(
                  name: categoriesName[index],
                  image: categoriesImage[index],
                  context: context,
                ),
                separatorBuilder: (context, index) => Container(
                  color: ColorManager.grey,
                  width: double.infinity,
                  height: AppSize.s1.h,
                ),
                itemCount: categoriesName.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryItem({
    required BuildContext context,
    required String name,
    required String image,
  }) =>
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PackagePromotedAdsScreen(),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / AppSize.s30,
            vertical: MediaQuery.of(context).size.height / AppSize.s50,
          ),
          child: Row(
            children: [
              Container(
                width: AppSize.s60.h,
                height: AppSize.s60.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: ColorManager.primaryColorBlue,
                  borderRadius: BorderRadius.circular(
                    AppSize.s10.w,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / AppSize.s30,
              ),
              Text(
                name,
                style: Theme.of(context).textTheme.displaySmall,
              )
            ],
          ),
        ),
      );
}
