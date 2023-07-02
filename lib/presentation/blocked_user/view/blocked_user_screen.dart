import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/values_manager.dart';

class BlockedUsersScreen extends StatelessWidget {
  const BlockedUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.blockedUsers.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s30,
          vertical: MediaQuery.of(context).size.width / AppSize.s60,
        ),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => blockedUserItem(
            context: context,
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: MediaQuery.of(context).size.height / AppSize.s60,
          ),
          itemCount: 10,
        ),
      ),
    );
  }

  Widget blockedUserItem({
    required BuildContext context,
  }) {
    return Row(
      children: [
        Container(
          width: AppSize.s80.w,
          height: AppSize.s80.w,
          decoration: const BoxDecoration(
            color: ColorManager.primaryColorGreen,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / AppSize.s30,
        ),
        Text(
          "User name",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
          ),
        ),
      ],
    );
  }
}
