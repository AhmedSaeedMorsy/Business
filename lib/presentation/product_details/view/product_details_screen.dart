import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/font_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';
import 'package:micro_service_e_commerce/presentation/product_details/controller/bloc.dart';
import 'package:micro_service_e_commerce/presentation/product_details/controller/states.dart';

import '../../../app/common/widget.dart';
import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/routes_manager.dart';
import '../../advert_by_type/view/advert_by_type_layout.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsBloc(),
      child: BlocBuilder<ProductDetailsBloc, ProductDetailsStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        ProductDetailsBloc.get(context).isInfavorit
                            ? AppStrings.removeFromFavorites.tr()
                            : AppStrings.addToFavorites.tr(),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / AppSize.s50,
                      ),
                      ProductDetailsBloc.get(context).isInfavorit
                          ? const Icon(
                              Icons.star,
                              color: ColorManager.yellow,
                            )
                          : const Icon(Icons.star_border),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / AppSize.s30,
                      ),
                    ],
                  ),
                )
              ],
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / AppSize.s100,
                horizontal: MediaQuery.of(context).size.width / AppSize.s40,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SharedWidget.sliderBanner(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s60,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1 week ago",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.visibility,
                                    color: ColorManager.darkGrey,
                                    size: AppSize.s20.w,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width /
                                        AppSize.s80,
                                  ),
                                  Text(
                                    "30025",
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s40,
                          ),
                          Text(
                            "Product name",
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s60,
                          ),
                          Text(
                            "8000",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontSize: FontSizeManager.s16.sp,
                                ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s60,
                          ),
                          publisherItem(
                            context: context,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s60,
                          ),
                          GridView.builder(
                            itemCount: 9,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: AppSize.s16.w,
                                    mainAxisSpacing: AppSize.s10.h,
                                    childAspectRatio: 1.6 / 1.0),
                            itemBuilder: (context, index) => detailsProduct(
                              context: context,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s30,
                          ),
                          Text(
                            AppStrings.description.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontSize: FontSizeManager.s18.sp,
                                ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s60,
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: FontSizeManager.s14.sp,
                                ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width /
                                              AppSize.s40,
                                      vertical:
                                          MediaQuery.of(context).size.height /
                                              AppSize.s60),
                                  decoration: BoxDecoration(
                                    color: ColorManager.primaryColorGreen,
                                    borderRadius: BorderRadius.circular(
                                      AppSize.s8,
                                    ),
                                    border: Border.all(
                                      color: ColorManager.primaryColorGreen,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        AppStrings.share.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                AppSize.s60,
                                      ),
                                      Icon(
                                        Icons.share,
                                        color: ColorManager.white,
                                        size: AppSize.s18.w,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width /
                                    AppSize.s40,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width /
                                              AppSize.s40,
                                      vertical:
                                          MediaQuery.of(context).size.height /
                                              AppSize.s60),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      AppSize.s8,
                                    ),
                                    border: Border.all(
                                      color: ColorManager.primaryColorGreen,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "4",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color: ColorManager.darkGrey,
                                            ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                AppSize.s60,
                                      ),
                                      Icon(
                                        Icons.thumb_up,
                                        color: ColorManager.darkGrey,
                                        size: AppSize.s18.w,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width /
                                    AppSize.s40,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width /
                                              AppSize.s40,
                                      vertical:
                                          MediaQuery.of(context).size.height /
                                              AppSize.s60),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      AppSize.s8,
                                    ),
                                    border: Border.all(
                                      color: ColorManager.primaryColorGreen,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        AppStrings.reportAd.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color: ColorManager.darkGrey,
                                            ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                AppSize.s60,
                                      ),
                                      Icon(
                                        Icons.warning_amber_rounded,
                                        color: ColorManager.darkGrey,
                                        size: AppSize.s18.w,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s40,
                          ),
                          Text(
                            AppStrings.comments.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontSize: FontSizeManager.s18.sp,
                                ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s60,
                          ),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => commentItem(
                              context: context,
                            ),
                            separatorBuilder: (context, index) => Container(
                              color: ColorManager.darkGrey,
                              height: AppSize.s1.h,
                              width: double.infinity,
                            ),
                            itemCount: 5,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s40,
                          ),
                          SharedWidget.defaultTextFormField(
                            hint: AppStrings.enterCommentHere.tr(),
                            textInputType: TextInputType.text,
                            context: context,
                            maxLines: 5,
                            minLines: 5,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s40,
                          ),
                          SharedWidget.defaultButton(
                            context: context,
                            function: () {},
                            text: AppStrings.comment.tr(),
                            backgroundColor: ColorManager.primaryColorBlue,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  color: ColorManager.white,
                                ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.relatedProducts.tr(),
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AdvertByTypeLayout(),
                                    ),
                                  );
                                },
                                child: Text(
                                  AppStrings.seeAll.tr(),
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s60,
                          ),
                          SizedBox(
                            height: AppSize.s300.h,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    Routes.productDetailsRoute,
                                  );
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: AppSize.s150.h,
                                      width: AppSize.s150.w,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                              AssetsManager.demoProduct,
                                            ),
                                            fit: BoxFit.cover),
                                        color: ColorManager.primaryColorBlue,
                                        borderRadius: BorderRadius.circular(
                                          AppSize.s10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              AppSize.s80,
                                    ),
                                    Text(
                                      "Name",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: ColorManager.black,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                      maxLines: 1,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              AppSize.s80,
                                    ),
                                    Text(
                                      "2500 QAR",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: ColorManager.black,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                      maxLines: 1,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              AppSize.s80,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.chat_rounded,
                                          color: ColorManager.darkGrey,
                                          size: AppSize.s14.w,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              AppSize.s100,
                                        ),
                                        Text(
                                          "3",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              separatorBuilder: (context, index) => SizedBox(
                                width: MediaQuery.of(context).size.width /
                                    AppSize.s40,
                              ),
                              itemCount: 10,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                AppSize.s60,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s60,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height /
                                  AppSize.s60,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppSize.s8.w,
                              ),
                              color: ColorManager.primaryColorGreen,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.call,
                                  size: AppSize.s16.w,
                                  color: ColorManager.white,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width /
                                      AppSize.s60,
                                ),
                                Text(
                                  AppStrings.call.tr(),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s50,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height /
                                  AppSize.s60,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppSize.s8.w,
                              ),
                              color: ColorManager.primaryColorBlue,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.mail,
                                  size: AppSize.s16.w,
                                  color: ColorManager.white,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width /
                                      AppSize.s60,
                                ),
                                Text(
                                  AppStrings.sms.tr(),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s50,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height /
                                  AppSize.s60,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppSize.s8.w,
                              ),
                              color: ColorManager.error,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.chat,
                                  size: AppSize.s16.w,
                                  color: ColorManager.white,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width /
                                      AppSize.s60,
                                ),
                                Text(
                                  AppStrings.chat.tr(),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s50,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height /
                                  AppSize.s60,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppSize.s8.w,
                              ),
                              color: ColorManager.primaryColorGreen,
                            ),
                            child: Center(
                              child: Text(
                                AppStrings.whatsApp.tr(),
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ),
                        ),
                      ],
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

  Widget publisherItem({required BuildContext context}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / AppSize.s50,
        vertical: MediaQuery.of(context).size.height / AppSize.s30,
      ),
      decoration: BoxDecoration(
        color: ColorManager.whiteWithOpacity,
        borderRadius: BorderRadius.circular(
          AppSize.s10.w,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: AppSize.s70.w,
            height: AppSize.s70.w,
            decoration: const BoxDecoration(
              color: ColorManager.primaryColorGreen,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / AppSize.s40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Company name",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s60,
              ),
              Text(
                "${AppStrings.followers.tr()}  58",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s60,
              ),
              Text(
                "+201029670053",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: FontSizeManager.s14.sp,
                    ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s60,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s60,
                      horizontal:
                          MediaQuery.of(context).size.width / AppSize.s40,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorManager.primaryColorGreen,
                      ),
                      borderRadius: BorderRadius.circular(
                        AppSize.s10.w,
                      ),
                    ),
                    child: Text(
                      AppStrings.follow.tr(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / AppSize.s40,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s60,
                      horizontal:
                          MediaQuery.of(context).size.width / AppSize.s40,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorManager.primaryColorGreen,
                      ),
                      borderRadius: BorderRadius.circular(
                        AppSize.s10.w,
                      ),
                    ),
                    child: Text(
                      AppStrings.contact.tr(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget detailsProduct({required BuildContext context}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / AppSize.s30,
        vertical: MediaQuery.of(context).size.height / AppSize.s60,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppSize.s10,
        ),
        color: ColorManager.lightGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lorim Ipsum",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: ColorManager.darkGrey,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / AppSize.s100,
          ),
          Text(
            "Lorim Ipsum",
            style: Theme.of(context).textTheme.displaySmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }

  Widget commentItem({required BuildContext context}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / AppSize.s60,
        horizontal: MediaQuery.of(context).size.width / AppSize.s30,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: AppSize.s70.w,
                height: AppSize.s70.w,
                decoration: const BoxDecoration(
                  color: ColorManager.primaryColorGreen,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / AppSize.s40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: FontSizeManager.s14.sp,
                        ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  Text(
                    "12 day ago",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / AppSize.s60,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: FontSizeManager.s14.sp,
                ),
          ),
        ],
      ),
    );
  }
}
