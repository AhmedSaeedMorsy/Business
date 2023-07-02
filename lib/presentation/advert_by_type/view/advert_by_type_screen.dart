import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/resources/assets_manager.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/values_manager.dart';

class AdvertByTypeScreen extends StatelessWidget {
  const AdvertByTypeScreen({
    super.key,
    required this.isList,
  });
  final bool isList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / AppSize.s50,
      ),
      child: !isList
          ? ListView.separated(
              itemBuilder: (context, index) => Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: AppSize.s100.h,
                      decoration: BoxDecoration(
                        color: ColorManager.primaryColorBlue,
                        image: const DecorationImage(
                          image: AssetImage(
                            AssetsManager.demoProduct,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(
                          AppSize.s10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / AppSize.s30,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                          "Desc",
                          style: Theme.of(context).textTheme.bodySmall,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height / AppSize.s80,
                        ),
                        Text(
                          "2500 QAR",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: ColorManager.black,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              itemCount: 13,
            )
          : GridView.builder(
              itemCount: 13,
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.6,
                crossAxisSpacing: AppSize.s16.w,
                mainAxisSpacing: AppSize.s10.h,
              ),
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: AppSize.s150.h,
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
                    height: MediaQuery.of(context).size.height / AppSize.s80,
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
                    height: MediaQuery.of(context).size.height / AppSize.s80,
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
                    height: MediaQuery.of(context).size.height / AppSize.s80,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.chat_rounded,
                        color: ColorManager.darkGrey,
                        size: AppSize.s14.w,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / AppSize.s100,
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
    );
  }
}
