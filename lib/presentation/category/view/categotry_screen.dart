// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

import '../../../app/constant/enums_extentions.dart';
import '../../../app/resources/strings_manager.dart';

class CategoryScreen extends StatelessWidget {
 const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: AppSize.s16.w,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          AppStrings.chooseCategory.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: ListView.separated(
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
    );
  }

  Widget categoryItem({
    required BuildContext context,
    required String name,
    required String image,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s30,
          vertical: MediaQuery.of(context).size.height / AppSize.s50,
        ),
        child: Row(
          children: [
            Container(
              width: AppSize.s80.h,
              height: AppSize.s80.h,
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
      );

}
