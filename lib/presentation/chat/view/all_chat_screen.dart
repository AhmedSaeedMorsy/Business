import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/presentation/chat/view/user_chat_screen.dart';

import '../../../app/resources/values_manager.dart';

class AllChatScreen extends StatelessWidget {
  const AllChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          style: Theme.of(context).textTheme.displayLarge,
          AppStrings.chat.tr(),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: MediaQuery.of(context).size.width / AppSize.s30,
          vertical: MediaQuery.of(context).size.height / AppSize.s60,
        ),
        child: ListView.separated(
          itemBuilder: (context, index) => chatItem(
            context: context,
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: MediaQuery.of(context).size.height / AppSize.s40,
          ),
          itemCount: 10,
        ),
      ),
    );
  }

  Widget chatItem({required BuildContext context}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const UserChatScreen(),
            ));
      },
      child: Row(
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User name",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                Text(
                  "Last message",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
          Text(
            "22-4-2023",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
