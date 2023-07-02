// ignore_for_file: must_be_immutable

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';

import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/font_manager.dart';
import '../../../app/resources/language_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../../app/services/shared_prefrences/cache_helper.dart';
import 'details_ad.dart';

class FormCategoryScreen extends StatelessWidget {
  FormCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s40,
          vertical: MediaQuery.of(context).size.height / AppSize.s50,
        ),
        child: Column(
          children: [
            dropDownItem(
              context: context,
              label: AppStrings.cities.tr(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s40,
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return dropDownItem(context: context, label: "Label");
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s40,
                  );
                },
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s60,
            ),
            SharedWidget.defaultButton(
              context: context,
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsAdScreen(),
                  ),
                );
              },
              text: AppStrings.next.tr(),
              backgroundColor: ColorManager.primaryColorGreen,
              style: Theme.of(context).textTheme.bodyMedium!,
            ),
          ],
        ),
      ),
    );
  }

  List<String> items = ["demo 1", "demo 2", "demo 3"];
  Widget dropDownItem({
    required BuildContext context,
    required String label,
  }) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        iconOnClick: Image(
          image: const AssetImage(
            AssetsManager.arrowUp,
          ),
          width: AppSize.s16.w,
          height: AppSize.s16.h,
        ),
        isExpanded: true,
        hint: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: ColorManager.darkGrey,
                      fontSize: FontSizeManager.s16.sp,
                    ),
              ),
            ),
          ],
        ),
        items: items
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: Theme.of(context).textTheme.displaySmall!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
            .toList(),
        onChanged: (value) {},
        icon: Image(
          image: const AssetImage(
            AssetsManager.arrowDown,
          ),
          width: AppSize.s16.w,
          height: AppSize.s16.h,
        ),
        buttonHeight: AppSize.s50.h,
        buttonWidth: double.infinity,
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppSize.s10.w,
          ),
          color: ColorManager.grey,
        ),
        buttonPadding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s22,
        ),
        itemHeight: AppSize.s42.h,
        dropdownMaxHeight: AppSize.s150.h,
        dropdownWidth: MediaQuery.of(context).size.width / AppSize.s1_2,
        scrollbarRadius: Radius.circular(
          AppSize.s10.w,
        ),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              AppSize.s20.w,
            ),
            bottomRight: Radius.circular(
              AppSize.s20.w,
            ),
          ),
          color: ColorManager.white,
        ),
        scrollbarThickness: AppSize.s8.w,
        offset: CacheHelper.getData(key: SharedKey.Language) ==
                    LanguageType.ENGLISH.getValue() ||
                CacheHelper.getData(key: SharedKey.Language) == null
            ? Offset(AppSize.s20.w, 0)
            : Offset(-AppSize.s20.w, 0),
      ),
    );
  }
}
