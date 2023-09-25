// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/values_manager.dart';

class HomeItem extends StatelessWidget {
  HomeItem({
    super.key,
    required this.text,
    required this.image,
    required this.onTap,
  });
  late String text;
  late String image;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s50,
          vertical: MediaQuery.of(context).size.height / AppSize.s70,
        ),
        height: AppSize.s150.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppSize.s10.w,
          ),
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.fill,
          ),
          color: ColorManager.grey,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
