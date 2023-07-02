import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/assets_manager.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/routes_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.messages.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s40,
        ),
        child: ListView.separated(
          itemBuilder: (context, index) => messageItem(context: context),
          separatorBuilder: (context, index) => SizedBox(
            height: MediaQuery.of(context).size.height / AppSize.s50,
          ),
          itemCount: 12,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            Routes.chatWithSupportRoute,
          );
        },
        child: const Icon(
          Icons.add,
          color: ColorManager.white,
        ),
      ),
    );
  }

  Widget messageItem({
    required BuildContext context,
  }) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: ColorManager.white,
          radius: AppSize.s30.w,
          backgroundImage: const AssetImage(
            AssetsManager.splash,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / AppSize.s40,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Last Message",
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / AppSize.s60,
              ),
              Text(
                "22-4-2023",
                style: Theme.of(context).textTheme.labelMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: AppSize.s20,
        ),
      ],
    );
  }
}
