import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/routes_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../../../app/services/shared_prefrences/cache_helper.dart';
import '../../language/view/language_screen.dart';
import '../../layout/controller/bloc.dart';
import '../../layout/controller/event.dart';
import '../../layout/controller/states.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s22,
          vertical: MediaQuery.of(context).size.height / AppSize.s60,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              moreItem(
                context: context,
                image: AssetsManager.add.tr(),
                label: AppStrings.addAdvertise,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.addAdsRoute,
                  );
                },
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              BlocBuilder<LayoutBloc, LayoutStates>(builder: (context, state) {
                return moreItem(
                  context: context,
                  image: AssetsManager.user,
                  label: AppStrings.myAds.tr(),
                  onTap: () {
                    LayoutBloc.get(context).add(
                      ChangeBottomNavBar(
                        1,
                      ),
                    );
                  },
                );
              }),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.diamond,
                label: AppStrings.paidPackages.tr(),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.paidPackagesRoute,
                  );
                },
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              BlocBuilder<LayoutBloc, LayoutStates>(
                builder: (context, state) {
                  return moreItem(
                    context: context,
                    image: AssetsManager.star,
                    onTap: () {
                      LayoutBloc.get(context).add(
                        ChangeBottomNavBar(
                          2,
                        ),
                      );
                    },
                    label: AppStrings.favorites.tr(),
                  );
                },
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.blockUser,
                label: AppStrings.blockedUsers.tr(),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.blockedUsersRoute,
                  );
                },
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.messenger,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.chatRoute,
                  );
                },
                label: AppStrings.chat.tr(),
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.creditCards,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.promotedAdsRoute,
                  );
                },
                label: AppStrings.promotedAds.tr(),
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.help,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.supportChatAndHelpCenterRoute,
                  );
                },
                label: AppStrings.supportChatAndHelpCenter.tr(),
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.worldwide,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LanguageScreen(
                        isEgypt: CacheHelper.getData(key: SharedKey.country) ==
                                "egypt"
                            ? true
                            : false,
                        isFirst: false,
                      ),
                    ),
                  );
                },
                label: AppStrings.language.tr(),
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.info,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.abouteRoute,
                  );
                },
                label: AppStrings.aboutBusiness.tr(),
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.share,
                onTap: () {},
                label: AppStrings.shareBusiness.tr(),
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.termsAndConditions,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.termsAndConditionsRoute,
                  );
                },
                label: AppStrings.termsOfUse.tr(),
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.termsAndConditions,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.privacyPolicyRoute,
                  );
                },
                label: AppStrings.privacyPolicy.tr(),
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.removeUser,
                onTap: () {},
                label: AppStrings.deleteAccount.tr(),
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
              moreItem(
                context: context,
                image: AssetsManager.logout,
                onTap: () {},
                label: AppStrings.logOut.tr(),
              ),
              Container(
                color: ColorManager.grey,
                width: double.infinity,
                height: AppSize.s1.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget moreItem({
    required BuildContext context,
    required String image,
    required String label,
    required void Function() onTap,
  }) =>
      InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / AppSize.s60,
          ),
          child: Row(
            children: [
              Container(
                width: AppSize.s30.w,
                height: AppSize.s30.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(
                    AppSize.s10,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / AppSize.s20,
              ),
              Text(
                label.tr(),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: ColorManager.black,
                    ),
              ),
            ],
          ),
        ),
      );
}
