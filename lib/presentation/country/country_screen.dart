import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/assets_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';
import 'package:micro_service_e_commerce/app/services/shared_prefrences/cache_helper.dart';
import 'package:micro_service_e_commerce/presentation/language/view/language_screen.dart';

class CountryScreen extends StatelessWidget {
  const CountryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.chooseCountry,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / AppSize.s60,
                horizontal: MediaQuery.of(context).size.width / AppSize.s40,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(
                  AppSize.s10.w,
                ),
              ),
              child: InkWell(
                onTap: () {
                  CacheHelper.setData(key: SharedKey.country, value: "egypt");

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LanguageScreen(
                        isEgypt: true,
                      ),
                    ),
                  );
                },
                child: Image(
                  width: AppSize.s120.w,
                  height: AppSize.s120.h,
                  image: const AssetImage(
                    AssetsManager.egypt,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / AppSize.s60,
                horizontal: MediaQuery.of(context).size.width / AppSize.s40,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(
                  AppSize.s10.w,
                ),
              ),
              child: InkWell(
                onTap: () {
                  CacheHelper.setData(key: SharedKey.country, value: "morocco");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LanguageScreen(
                        isEgypt: false,
                      ),
                    ),
                  );
                },
                child: Image(
                  width: AppSize.s120.w,
                  height: AppSize.s120.h,
                  image: const AssetImage(
                    AssetsManager.morocco,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
