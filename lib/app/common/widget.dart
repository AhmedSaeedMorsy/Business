import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/language_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/values_manager.dart';

class SharedWidget {
  static Widget defaultTextFormField({
    final TextEditingController? controller,
    required TextInputType textInputType,
    bool obscure = false,
    void Function(String?)? onChange,
    required BuildContext context,
    void Function()? onTap,
    String? hint,
    bool? enabled,
    String? Function(String?)? validator,
    Widget? suffixIcon,
    Widget? prefixIcon,
    void Function(String)? onFieldSubmitted,
    int maxLines = 1,
    int minLines = 1,
  }) =>
      TextFormField(
        controller: controller,
        style: Theme.of(context).textTheme.displayMedium,
        cursorColor: ColorManager.primaryColorBlue,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          fillColor: ColorManager.white,
          filled: true, prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.grey,
            ),
            borderRadius: BorderRadius.circular(
              AppSize.s10.w,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.grey,
            ),
            borderRadius: BorderRadius.circular(
              AppSize.s10.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.grey,
            ),
            borderRadius: BorderRadius.circular(
              AppSize.s10.w,
            ),
          ),
          contentPadding: EdgeInsetsDirectional.only(
            top: AppPadding.p12.h,
            start: AppPadding.p16.w,
          ),
          // hint style
          hintStyle: Theme.of(context).textTheme.bodySmall,
        ),
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChange,
        onTap: onTap,
        enabled: enabled,
        minLines: minLines,
        validator: validator,
        keyboardType: textInputType,
        maxLines: maxLines,
      );

  static Widget defaultButton({
    required BuildContext context,
    required Function() function,
    required String text,
    required Color backgroundColor,
    required TextStyle style,
  }) {
    return Container(
      height: AppSize.s42.h,
      width: double.infinity,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          AppSize.s10.h,
        ),
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }

  static List<String> listBanner = [
    AssetsManager.onBoarding,
    AssetsManager.onBoarding,
    AssetsManager.onBoarding,
  ];

  static Widget sliderBanner() => CarouselSlider(
        carouselController: CarouselController(),
        items: listBanner
            .map(
              (e) => Container(
                decoration: BoxDecoration(
                  color: ColorManager.primaryColorBlue,
                  borderRadius: BorderRadius.circular(
                    AppSize.s10,
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      e,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
            .toList(),
        options: CarouselOptions(
          height: AppSize.s120.h,
          viewportFraction: .8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(
            seconds: AppIntDuration.duration3,
          ),
          autoPlayAnimationDuration: const Duration(
            milliseconds: AppIntDuration.duration500,
          ),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      );

  static void changeLanguage(context) {
    changeAppLanguage();
    Phoenix.rebirth(context);
  }

  static AppBar appBar({required BuildContext context, required String title}) {
    return AppBar(
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
        title.tr(),
        style: Theme.of(context).textTheme.displayLarge,
      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              Routes.searchRoute,
            );
          },
          child: const Icon(
            Icons.search_outlined,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / AppSize.s50,
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.notifications_outlined,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / AppSize.s50,
        ),
      ],
    );
  }

  static Widget adsItem() => Container(
        width: double.infinity,
        height: AppSize.s120.h,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(
                AssetsManager.demoAds,
              ),
              fit: BoxFit.cover),
          color: ColorManager.primaryColorBlue,
          borderRadius: BorderRadius.circular(
            AppSize.s10.w,
          ),
        ),
      );
}
