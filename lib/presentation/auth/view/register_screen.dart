import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';

import '../../../app/common/widget.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/values_manager.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: AppSize.s0,
        iconTheme: const IconThemeData(
          color: ColorManager.white,
        ),
        backgroundColor: ColorManager.primaryColorBlue,
        title: Text(
          AppStrings.createAnAccount.tr(),
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: ColorManager.white,
              ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorManager.primaryColorBlue,
              ColorManager.white,
              ColorManager.white,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / AppSize.s50,
              horizontal: MediaQuery.of(context).size.width / AppSize.s10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.name.tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                SharedWidget.defaultTextFormField(
                  textInputType: TextInputType.emailAddress,
                  context: context,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                Text(
                  AppStrings.email.tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                SharedWidget.defaultTextFormField(
                  textInputType: TextInputType.emailAddress,
                  context: context,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                Text(
                  AppStrings.password.tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                SharedWidget.defaultTextFormField(
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: const Icon(
                    Icons.visibility_off_outlined,
                  ),
                  context: context,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                Text(
                  AppStrings.confirmPassword.tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                SharedWidget.defaultTextFormField(
                  textInputType: TextInputType.visiblePassword,
                  context: context,
                  suffixIcon: const Icon(
                    Icons.visibility_off_outlined,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                Text(
                  AppStrings.phoneNumber.tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                SharedWidget.defaultTextFormField(
                  textInputType: TextInputType.number,
                  context: context,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                Text(
                  AppStrings.address.tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s60,
                ),
                SharedWidget.defaultTextFormField(
                  textInputType: TextInputType.streetAddress,
                  context: context,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s12,
                ),
                SharedWidget.defaultButton(
                  context: context,
                  function: () {},
                  text: AppStrings.signUp.tr(),
                  backgroundColor: ColorManager.primaryColorBlue,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: ColorManager.white,
                      ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
