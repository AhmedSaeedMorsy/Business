import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

import '../../../app/resources/color_manager.dart';
import 'form_category.dart';

class AddAds extends StatelessWidget {
  AddAds({super.key});
  final searchController = TextEditingController();
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
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s50,
          vertical: MediaQuery.of(context).size.height / AppSize.s60,
        ),
        child: Column(
          children: [
            SharedWidget.defaultTextFormField(
              controller: searchController,
              textInputType: TextInputType.text,
              context: context,
              hint: AppStrings.search.tr(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s60,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / AppSize.s60,
                ),
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => drawerItem(
                    context: context,
                  ),
                  separatorBuilder: (context, index) => Container(
                    color: ColorManager.darkGrey,
                    height: AppSize.s1.h,
                    width: double.infinity,
                  ),
                  itemCount: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerItem({
    required BuildContext context,
  }) =>
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormCategoryScreen(),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / AppSize.s40,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Category Name",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: AppSize.s16.w,
              )
            ],
          ),
        ),
      );
}
