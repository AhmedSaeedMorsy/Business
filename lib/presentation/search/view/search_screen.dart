import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';
import '../../category/view/categotry_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
          AppStrings.search.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / AppSize.s50,
          horizontal: MediaQuery.of(context).size.width / AppSize.s30,
        ),
        child: Column(
          children: [
            SharedWidget.defaultTextFormField(
              textInputType: TextInputType.text,
              context: context,
              prefixIcon: const Icon(
                Icons.search,
                color: ColorManager.grey,
              ),
              suffixIcon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>const CategoryScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / AppSize.s50,
                    horizontal: MediaQuery.of(context).size.width / AppSize.s30,
                  ),
                  width: AppSize.s120.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(
                        AppSize.s10.w,
                      ),
                      bottomEnd: Radius.circular(
                        AppSize.s10.w,
                      ),
                    ),
                    color: ColorManager.primaryColorGreen,
                  ),
                  child: Row(
                    children: [
                      Text(
                        AppStrings.categories.tr(),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: ColorManager.white,
                        size: AppSize.s16.w,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s10,
            ),
            Column(
              children: [
                Icon(
                  Icons.search_outlined,
                  size: AppSize.s80.w,
                  color: ColorManager.grey,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s30,
                ),
                Text(
                  AppStrings.searchResultsAreEmpty.tr(),
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: ColorManager.grey,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
