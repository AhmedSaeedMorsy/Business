import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../app/common/widget.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';

class ChatWithSupportScreen extends StatelessWidget {
  const ChatWithSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.supportChatAndHelpCenter.tr(),
          style: Theme.of(context).textTheme.displayLarge,
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
