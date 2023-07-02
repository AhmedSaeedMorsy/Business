// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:conditional_builder_rec/conditional_builder_rec.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/assets_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../app/common/widget.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/routes_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';

class OnBoardingScren extends StatefulWidget {
  const OnBoardingScren({Key? key}) : super(key: key);

  @override
  _OnBoardingScrenState createState() => _OnBoardingScrenState();
}

class BoardingModel {
  late final String body;

  BoardingModel(
    this.body,
  );
}

class _OnBoardingScrenState extends State<OnBoardingScren> {
  var pageController = PageController();

  List<BoardingModel> boardigItem = [
    BoardingModel(AppStrings.onBoardingBody.tr()),
    BoardingModel(AppStrings.onBoardingBody.tr()),
    BoardingModel(AppStrings.onBoardingBody.tr()),
  ];

  bool isLast = false;

  void toLoginScreen() {
    // CacheHelper.setData(key: 'onBoarding', value: true);
    Navigator.pushReplacementNamed(
      context,
      Routes.layoutRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s18,
          vertical: MediaQuery.of(context).size.height / AppSize.s50,
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s50,
            ),
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  if (index == boardigItem.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                physics: const BouncingScrollPhysics(),
                controller: pageController,
                itemBuilder: (context, index) =>
                    onBoardingItemUi(boardigItem[index]),
                itemCount: boardigItem.length,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s50,
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: boardigItem.length,
              effect: ExpandingDotsEffect(
                activeDotColor: ColorManager.primaryColorBlue,
                dotHeight: AppSize.s10.h,
                dotWidth: AppSize.s10.w,
                spacing: AppSize.s6.w,
                expansionFactor: AppSize.s5.w,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s10,
            ),
            ConditionalBuilderRec(
              builder: (context) => Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / AppSize.s30,
                ),
                child: SharedWidget.defaultButton(
                  context: context,
                  function: () {
                    Navigator.pushReplacementNamed(
                      context,
                      Routes.layoutRoute,
                    );
                  },
                  text: AppStrings.start.tr(),
                  backgroundColor: ColorManager.primaryColorBlue,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: ColorManager.white,
                      ),
                ),
              ),
              condition: isLast == true,
              fallback: (context) => Row(
                children: [
                  InkWell(
                    onTap: () {
                      toLoginScreen();
                    },
                    child: Text(
                      AppStrings.skip.tr(),
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: ColorManager.black,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s50,
            ),
          ],
        ),
      ),
    );
  }

  Widget onBoardingItemUi(BoardingModel model) => SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s10,
            ),
            const Image(
              image: AssetImage(
                AssetsManager.onBoarding,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / AppSize.s50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / AppSize.s12,
                vertical: MediaQuery.of(context).size.height / AppSize.s120,
              ),
              child: Text(
                model.body,
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
}
