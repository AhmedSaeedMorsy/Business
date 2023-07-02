import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

class MyAdsStateScreen extends StatelessWidget {
  const MyAdsStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / AppSize.s50,
          ),
          SharedWidget.defaultTextFormField(
            textInputType: TextInputType.text,
            context: context,
            hint: AppStrings.searchMyAdsHint.tr(),
          ),
        ],
      ),
    );
  }
}
