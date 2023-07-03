// ignore_for_file: library_prefixes, unused_local_variable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/routes_manager.dart';
import '../../../app/resources/strings_manager.dart';
import '../../../app/resources/values_manager.dart';
import '../controller/bloc.dart';
import '../controller/event.dart';
import '../controller/states.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutBloc(),
      child: BlocBuilder<LayoutBloc, LayoutStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: AppSize.s0,
              title: Text(
                LayoutBloc.get(context)
                    .appBarTitle[LayoutBloc.get(context).index],
                style: Theme.of(context).textTheme.displayLarge,
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.searchRoute,
                    );
                  },
                  child: const Icon(
                    Icons.search_outlined,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / AppSize.s50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.notificationRoute,
                    );
                  },
                  child: const Icon(
                    Icons.notifications_outlined,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / AppSize.s50,
                ),
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: ColorManager.primaryColorBlue,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Routes.addAdsRoute,
                );
              },
              child: const Icon(
                Icons.add,
              ),
            ),
            body:
                LayoutBloc.get(context).screens[LayoutBloc.get(context).index],
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: LayoutBloc.get(context).index == 0
                        ? ColorManager.primaryColorBlue
                        : ColorManager.darkGrey,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsetsDirectional.only(
                      end: MediaQuery.of(context).size.width / AppSize.s10,
                    ),
                    child: Icon(
                      Icons.person_2_outlined,
                      color: LayoutBloc.get(context).index == 1
                          ? ColorManager.primaryColorBlue
                          : ColorManager.darkGrey,
                    ),
                  ),
                  label: "My ads",
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: MediaQuery.of(context).size.width / AppSize.s10,
                    ),
                    child: Icon(
                      Icons.favorite_outline,
                      color: LayoutBloc.get(context).index == 2
                          ? ColorManager.primaryColorBlue
                          : ColorManager.darkGrey,
                    ),
                  ),
                  label: "Favorites",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list_outlined,
                    color: LayoutBloc.get(context).index == 3
                        ? ColorManager.primaryColorBlue
                        : ColorManager.darkGrey,
                  ),
                  label: "More",
                ),
              ],
              backgroundColor: ColorManager.white,
              type: BottomNavigationBarType.fixed,
              elevation: AppSize.s0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: LayoutBloc.get(context).index,
              onTap: (index) {
                if (index == 1 || index == 2) {
                  Navigator.pushNamed(context, Routes.loginRoute);
                } else {
                  LayoutBloc.get(context).add(
                    ChangeBottomNavBar(
                      index,
                    ),
                  );
                }
              },
            ),
            drawer: Drawer(
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / AppSize.s30,
                  right: MediaQuery.of(context).size.width / AppSize.s30,
                  top: MediaQuery.of(context).size.height / AppSize.s10,
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        AppStrings.categories.tr(),
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height / AppSize.s50,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) => drawerItem(
                          context: context,
                        ),
                        separatorBuilder: (context, index) => Container(
                          color: ColorManager.darkGrey,
                          height: AppSize.s1.h,
                          width: double.infinity,
                        ),
                        itemCount: 30,
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height / AppSize.s30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget drawerItem({
    required BuildContext context,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / AppSize.s50,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Category Name",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: AppSize.s16.w,
            )
          ],
        ),
      );
}
