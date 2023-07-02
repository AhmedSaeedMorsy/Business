import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / AppSize.s50,
          horizontal: MediaQuery.of(context).size.width / AppSize.s40,
        ),
        child: Column(
          children: [
            SharedWidget.defaultTextFormField(
              textInputType: TextInputType.name,
              context: context,
              controller: TextEditingController(),
              hint: AppStrings.search,
              prefixIcon: const Icon(
                Icons.search,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s50,
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => favoritesItem(
                  context: context,
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s50,
                ),
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget favoritesItem({required BuildContext context}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: AppSize.s120.w,
          width: AppSize.s120.w,
          decoration: BoxDecoration(
            color: ColorManager.primaryColorGreen,
            borderRadius: BorderRadius.circular(
              AppSize.s10.w,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / AppSize.s50,
              vertical: MediaQuery.of(context).size.height / AppSize.s40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Advretise Name",
                  style: Theme.of(context).textTheme.displayLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s80,
                ),
                Text(
                  "Advretise category",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s40,
                ),
                Row(
                  children: [
                    Text(
                      "2500",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.message,
                      size: AppSize.s14.w,
                      color: ColorManager.darkGrey,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / AppSize.s80,
                    ),
                    Text(
                      "10",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / AppSize.s60,
                    ),
                    Icon(
                      Icons.thumb_up,
                      size: AppSize.s14.w,
                      color: ColorManager.darkGrey,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / AppSize.s80,
                    ),
                    Text(
                      "10",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Icon(
          Icons.close,
        ),
      ],
    );
  }
}
