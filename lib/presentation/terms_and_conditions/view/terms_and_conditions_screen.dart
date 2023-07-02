import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/font_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

import '../../../app/resources/strings_manager.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.termsOfUse.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s40,
          vertical: MediaQuery.of(context).size.height / AppSize.s60,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s""",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s40,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => termsOfUseItem(
                  context: context,
                  index: index + 1,
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s40,
                ),
                itemCount: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget termsOfUseItem({
    required BuildContext context,
    required int index,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$index. Title of Terms",
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: ColorManager.darkGrey,
                fontSize: FontSizeManager.s20.sp,
              ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / AppSize.s40,
        ),
        Text(
          """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.""",
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
