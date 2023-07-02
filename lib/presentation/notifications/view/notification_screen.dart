import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

import '../../../app/resources/strings_manager.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.notification.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s30,
          vertical: MediaQuery.of(context).size.height / AppSize.s60,
        ),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => notificationItem(
            context: context,
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: MediaQuery.of(context).size.height / AppSize.s40,
          ),
          itemCount: 15,
        ),
      ),
    );
  }

  Widget notificationItem({required BuildContext context}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / AppSize.s40,
        vertical: MediaQuery.of(context).size.height / AppSize.s60,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppSize.s10.w,
        ),
        color: ColorManager.lightGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Notification Title",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / AppSize.s80,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / AppSize.s80,
          ),
          Text(
            "22-6-2023",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
