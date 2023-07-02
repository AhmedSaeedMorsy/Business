import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/assets_manager.dart';

import '../../../app/resources/color_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';

class CompanyProfileScreen extends StatelessWidget {
  const CompanyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedWidget.appBar(context: context, title: "Company Name"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s30,
          vertical: MediaQuery.of(context).size.height / AppSize.s60,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: AppSize.s36.w,
                    backgroundImage: const AssetImage(
                      AssetsManager.demoCompany,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          AppStrings.followers.tr(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s80,
                        ),
                        Text(
                          "0",
                          style: Theme.of(context).textTheme.displayLarge,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          AppStrings.following.tr(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s80,
                        ),
                        Text(
                          "0",
                          style: Theme.of(context).textTheme.displayLarge,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          AppStrings.ads.tr(),
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s80,
                        ),
                        Text(
                          "0",
                          style: Theme.of(context).textTheme.displayLarge,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s40,
              ),
              Text(
                "Description Details",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s80,
              ),
              Text(
                "+201023556253",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s60,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width / AppSize.s40,
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s60,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.s10,
                      ),
                      border: Border.all(
                        color: ColorManager.darkGrey,
                      ),
                    ),
                    child: Icon(
                      Icons.share_outlined,
                      size: AppSize.s16.w,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / AppSize.s60,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width / AppSize.s40,
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s60,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.s10,
                      ),
                      border: Border.all(
                        color: ColorManager.darkGrey,
                      ),
                    ),
                    child: Icon(
                      Icons.phone,
                      size: AppSize.s16.w,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / AppSize.s60,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width / AppSize.s40,
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s60,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.s10,
                      ),
                      border: Border.all(
                        color: ColorManager.darkGrey,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.pin_drop_outlined,
                          size: AppSize.s16.w,
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s50,
                        ),
                        Text(
                          AppStrings.location.tr(),
                          style: Theme.of(context).textTheme.labelMedium,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / AppSize.s60,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width / AppSize.s40,
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s60,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.s10,
                      ),
                      color: ColorManager.primaryColorGreen,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_2_outlined,
                          size: AppSize.s16.w,
                          color: ColorManager.white,
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s50,
                        ),
                        Text(
                          AppStrings.follow.tr(),
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: ColorManager.white,
                                  ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              GridView.builder(
                itemCount: 13,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.6,
                  crossAxisSpacing: AppSize.s16.w,
                  mainAxisSpacing: AppSize.s10.h,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const ProductDetailsScreen(),
                    //   ),
                    // );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: AppSize.s150.h,
                        decoration: BoxDecoration(
                          color: ColorManager.primaryColorBlue,
                          image: const DecorationImage(
                              image: AssetImage(
                                AssetsManager.demoProduct,
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(
                            AppSize.s10,
                          ),
                        ),
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height / AppSize.s80,
                      ),
                      Text(
                        "Name",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: ColorManager.black,
                              overflow: TextOverflow.ellipsis,
                            ),
                        maxLines: 1,
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height / AppSize.s80,
                      ),
                      Text(
                        "2500 QAR",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: ColorManager.black,
                              overflow: TextOverflow.ellipsis,
                            ),
                        maxLines: 1,
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height / AppSize.s80,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.chat_rounded,
                            color: ColorManager.darkGrey,
                            size: AppSize.s14.w,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width /
                                AppSize.s100,
                          ),
                          Text(
                            "3",
                            style: Theme.of(context).textTheme.labelMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
