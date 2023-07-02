import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';

import '../../../app/resources/color_manager.dart';
import '../../../app/resources/values_manager.dart';

class UserChatScreen extends StatelessWidget {
  const UserChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: AppSize.s42.w,
              height: AppSize.s42.w,
              decoration: const BoxDecoration(
                color: ColorManager.primaryColorGreen,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / AppSize.s50,
            ),
            Text(
              "User name",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / AppSize.s50,
          horizontal: MediaQuery.of(context).size.width / AppSize.s30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SharedWidget.defaultTextFormField(
              textInputType: TextInputType.text,
              context: context,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
                  color: ColorManager.primaryColorGreen,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
