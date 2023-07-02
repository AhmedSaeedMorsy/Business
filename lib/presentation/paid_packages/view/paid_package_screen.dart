import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';

class PaidPackagesScreen extends StatelessWidget {
  const PaidPackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.paidPackages.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / AppSize.s80,
          horizontal: MediaQuery.of(context).size.width / AppSize.s40,
        ),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => paidPackageItem(
            context: context,
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: MediaQuery.of(context).size.height / AppSize.s40,
          ),
          itemCount: 12,
        ),
      ),
    );
  }

  Widget paidPackageItem({required BuildContext context}) {
    return Row(
      children: [
        Image(
          width: AppSize.s42.w,
          image: const AssetImage(
            AssetsManager.gold,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / AppSize.s40,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Category Name",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s60,
              ),
              Row(
                children: [
                  Text(
                    AppStrings.numberOfDays.tr(),
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Text(
                    ":",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / AppSize.s50,
                  ),
                  Text(
                    "5",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
        Text(
          "500",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }
}
