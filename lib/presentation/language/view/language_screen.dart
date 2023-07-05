// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/common/widget.dart';
import '../../../app/constant/enums_extentions.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/language_manager.dart';
import '../../../app/resources/routes_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../../app/services/shared_prefrences/cache_helper.dart';
import '../controller/bloc.dart';
import '../controller/event.dart';
import '../controller/states.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({
    super.key,
    required this.isEgypt,
    required this.isFirst,
  });
  final bool isEgypt;
  final bool isFirst;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageBloc(),
      child: BlocBuilder<LanguageBloc, LanguageStates>(
        builder: (context, state) {
          LanguageEnum language =getLanguage();
          return Scaffold(
            backgroundColor: ColorManager.white,
            body: Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / AppSize.s10,
                horizontal: MediaQuery.of(context).size.width / AppSize.s10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.pleaseChosoeTheAppLanguage.tr(),
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    child: Container(
                      color: ColorManager.black,
                      width: double.infinity,
                      height: AppSize.s2.h,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s50,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          AppStrings.english,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                      Radio(
                        activeColor: ColorManager.primaryColorBlue,
                        value: LanguageEnum.english,
                        groupValue: language,
                        onChanged: (value) {
                          language = value!;
                          if (language == LanguageEnum.english) {
                            CacheHelper.setData(
                                key: SharedKey.Language,
                                value: LanguageType.ENGLISH.getValue());
                          }
                          LanguageBloc.get(context).add(
                            ChooseLanguageEvent(
                              language,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  !isEgypt
                      ? Row(
                          children: [
                            Expanded(
                              child: Text(
                                AppStrings.france,
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ),
                            Radio(
                              activeColor: ColorManager.primaryColorBlue,
                              value: LanguageEnum.france,
                              groupValue: language,
                              onChanged: (value) {
                                language = value!;
                                if (language == LanguageEnum.france) {
                                  CacheHelper.setData(
                                      key: SharedKey.Language,
                                      value: LanguageType.FRANCE.getValue());
                                }
                                LanguageBloc.get(context).add(
                                  ChooseLanguageEvent(
                                    language,
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      : const SizedBox(),
                  isEgypt
                      ? Row(
                          children: [
                            Expanded(
                              child: Text(
                                AppStrings.arabic,
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ),
                            Radio(
                              activeColor: ColorManager.primaryColorBlue,
                              value: LanguageEnum.arabic,
                              groupValue: language,
                              onChanged: (value) {
                                language = value!;
                                LanguageBloc.get(context)
                                    .add(ChooseLanguageEvent(value));
                                if (value == LanguageEnum.arabic) {
                                  CacheHelper.setData(
                                      key: SharedKey.Language,
                                      value: LanguageType.ARABIC.getValue());
                                }
                              },
                            ),
                          ],
                        )
                      : const SizedBox(),
                  const Spacer(),
                  SharedWidget.defaultButton(
                    context: context,
                    function: () {
                      getLocal().then((local) => {context.setLocale(local)});

                      isFirst
                          ? Navigator.pushNamed(
                              context,
                              Routes.onBoardingRoute,
                            )
                          : Navigator.pop(context);
                    },
                    text: AppStrings.next.tr(),
                    backgroundColor: ColorManager.primaryColorBlue,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: ColorManager.white,
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  LanguageEnum getLanguage(){
    if(CacheHelper.getData(key: SharedKey.Language)==LanguageType.FRANCE.getValue()){
      return LanguageEnum.france;
    }else if (CacheHelper.getData(key: SharedKey.Language)==LanguageType.ARABIC.getValue()){
      return LanguageEnum.arabic;
    }else{
      return LanguageEnum.english;
    }
  }
}
