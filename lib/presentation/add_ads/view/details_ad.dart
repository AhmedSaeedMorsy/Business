import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/assets_manager.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';
import 'package:micro_service_e_commerce/app/services/shared_prefrences/cache_helper.dart';

import '../../../app/resources/routes_manager.dart';

class DetailsAdScreen extends StatelessWidget {
  DetailsAdScreen({super.key});
  final priceController = TextEditingController();
  final nameArabicController = TextEditingController();
  final descriptionArabicController = TextEditingController();
  final nameEnglishController = TextEditingController();
  final descriptionEnglishController = TextEditingController();
  final nameFranceController = TextEditingController();
  final descriptionFranceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / AppSize.s50,
          horizontal: MediaQuery.of(context).size.width / AppSize.s30,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.addPhoto.tr(),
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: ColorManager.primaryColorGreen,
                    ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              Container(
                width: AppSize.s70.w,
                height: AppSize.s70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(AppSize.s10.w),
                  color: ColorManager.greyWithOpacity,
                ),
                child: const Image(
                  image: AssetImage(
                    AssetsManager.add,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s30,
              ),
              Text(
                AppStrings.price.tr(),
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: ColorManager.primaryColorGreen,
                    ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              SharedWidget.defaultTextFormField(
                controller: priceController,
                textInputType: TextInputType.number,
                context: context,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s30,
              ),
              Text(
                AppStrings.detailsInEnglish.tr(),
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: ColorManager.primaryColorGreen,
                    ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              SharedWidget.defaultTextFormField(
                controller: nameEnglishController,
                textInputType: TextInputType.text,
                context: context,
                hint: AppStrings.name.tr(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              SharedWidget.defaultTextFormField(
                controller: descriptionEnglishController,
                textInputType: TextInputType.text,
                context: context,
                hint: AppStrings.description.tr(),
                maxLines: 5,
                minLines: 5,
              ),
              CacheHelper.getData(key: SharedKey.country) == "egypt"
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s30,
                        ),
                        Text(
                          AppStrings.detailsInArabic.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                color: ColorManager.primaryColorGreen,
                              ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s50,
                        ),
                        SharedWidget.defaultTextFormField(
                          controller: nameArabicController,
                          textInputType: TextInputType.text,
                          context: context,
                          hint: AppStrings.name.tr(),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s50,
                        ),
                        SharedWidget.defaultTextFormField(
                          controller: descriptionArabicController,
                          textInputType: TextInputType.text,
                          context: context,
                          hint: AppStrings.description.tr(),
                          maxLines: 5,
                          minLines: 5,
                        ),
                      ],
                    )
                  : const SizedBox(),
              CacheHelper.getData(key: SharedKey.country) == "morocco"
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s30,
                        ),
                        Text(
                          AppStrings.detailsInFrance.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                color: ColorManager.primaryColorGreen,
                              ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s50,
                        ),
                        SharedWidget.defaultTextFormField(
                          controller: nameFranceController,
                          textInputType: TextInputType.text,
                          context: context,
                          hint: AppStrings.name.tr(),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s50,
                        ),
                        SharedWidget.defaultTextFormField(
                          controller: descriptionFranceController,
                          textInputType: TextInputType.text,
                          context: context,
                          hint: AppStrings.description.tr(),
                          maxLines: 5,
                          minLines: 5,
                        ),
                      ],
                    )
                  : const SizedBox(),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s30,
              ),
              Text(
                AppStrings.enterAdInfo.tr(),
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s30,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / AppSize.s20,
                  vertical: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorManager.error,
                  ),
                  borderRadius: BorderRadius.circular(
                    AppSize.s10.w,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: AppSize.s30.w,
                      color: ColorManager.error,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / AppSize.s50,
                    ),
                    Expanded(
                      child: Text(
                        AppStrings.neverAskYou.tr(),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s30,
              ),
              SharedWidget.defaultButton(
                context: context,
                function: () {
                  Navigator.pushNamed(
                    context,
                    Routes.layoutRoute,
                  );
                },
                text: AppStrings.addAdvertise.tr(),
                backgroundColor: ColorManager.primaryColorGreen,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
