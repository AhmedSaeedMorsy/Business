import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

import '../../../app/resources/routes_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: AppSize.s0,
        iconTheme: const IconThemeData(
          color: ColorManager.white,
        ),
        backgroundColor: ColorManager.primaryColorBlue,
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
              vertical: MediaQuery.of(context).size.height / AppSize.s5,
              horizontal: MediaQuery.of(context).size.width / AppSize.s10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.emailAddressOrPhonenumber.tr(),
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
                  height: MediaQuery.of(context).size.height / AppSize.s12,
                ),
                SharedWidget.defaultButton(
                  context: context,
                  function: () {},
                  text: AppStrings.login.tr(),
                  backgroundColor: ColorManager.primaryColorBlue,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: ColorManager.white,
                      ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s100,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.forgetPasswordRoute,
                    );
                  },
                  child: Text(
                    AppStrings.forgetPassword.tr(),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / AppSize.s30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.registerRoute,
                    );
                  },
                  child: Center(
                    child: Text(
                      AppStrings.createAnAccount.tr(),
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
