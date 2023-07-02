// ignore_for_file: must_be_immutable, no_logic_in_create_state

import 'package:bottom_picker/bottom_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';
import 'package:micro_service_e_commerce/presentation/advert_by_type/controller/bloc.dart';
import 'package:micro_service_e_commerce/presentation/advert_by_type/controller/events.dart';
import 'package:micro_service_e_commerce/presentation/advert_by_type/controller/states.dart';
import '../../../app/resources/color_manager.dart';
import '../../../app/resources/routes_manager.dart';
import 'advert_by_type_screen.dart';

class AdvertByTypeLayout extends StatefulWidget {
  const AdvertByTypeLayout({
    super.key,
  });
  @override
  State<AdvertByTypeLayout> createState() => _AdvertByTypeLayoutState();
}

class _AdvertByTypeLayoutState extends State<AdvertByTypeLayout>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: SharedWidget.appBar(
        context: context,
        title: AppStrings.business.tr(),
      ),
      body: BlocProvider(
        create: (context) => AdvertByTypeBloc(),
        child: BlocBuilder<AdvertByTypeBloc, AdvertByTypeStates>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / AppSize.s30,
                  ),
                  child: TabBar(
                    isScrollable: true,
                    physics: const BouncingScrollPhysics(),
                    unselectedLabelColor: ColorManager.black,
                    labelColor: ColorManager.white,
                    indicatorPadding: EdgeInsets.symmetric(
                      vertical:
                          MediaQuery.of(context).size.height / AppSize.s80,
                    ),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.s8,
                      ),
                      color: ColorManager.primaryColorBlue,
                    ),
                    tabs: const [
                      Tab(
                        text: "label",
                      ),
                      Tab(
                        text: "Second label",
                      ),
                      Tab(
                        text: "Third label",
                      ),
                      Tab(
                        text: "Forth label",
                      ),
                      Tab(
                        text: "Fifth label",
                      ),
                    ],
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width / AppSize.s30,
                    ),
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: [
                        AdvertByTypeScreen(
                          isList: AdvertByTypeBloc.get(context).isList,
                        ),
                        AdvertByTypeScreen(
                          isList: AdvertByTypeBloc.get(context).isList,
                        ),
                        AdvertByTypeScreen(
                          isList: AdvertByTypeBloc.get(context).isList,
                        ),
                        AdvertByTypeScreen(
                          isList: AdvertByTypeBloc.get(context).isList,
                        ),
                        AdvertByTypeScreen(
                          isList: AdvertByTypeBloc.get(context).isList,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: ColorManager.whiteWithOpacity,
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              Routes.filterRoute,
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height /
                                  AppSize.s40,
                            ),
                            child: Text(
                              AppStrings.filters.tr(),
                              style: Theme.of(context).textTheme.labelMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            BottomPicker(
                              items: [
                                Text(
                                  AppStrings.mostCommented.tr(),
                                ),
                                Text(
                                  AppStrings.mostViewed.tr(),
                                ),
                                Text(
                                  AppStrings.mostLiked.tr(),
                                ),
                              ],
                              pickerTextStyle:
                                  Theme.of(context).textTheme.displayLarge!,
                              title: 'Choose your sort',
                              titleStyle:
                                  Theme.of(context).textTheme.displayLarge!,
                              onSubmit: (index) {
                                AdvertByTypeBloc.get(context)
                                    .add(ChangeSortedItemEvent(true));
                              },
                            ).show(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height /
                                  AppSize.s40,
                            ),
                            child: Text(
                              AppStrings.sortBy.tr(),
                              style: AdvertByTypeBloc.get(context).isSorted
                                  ? Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                        color: ColorManager.primaryColorBlue,
                                      )
                                  : Theme.of(context).textTheme.labelMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height /
                                  AppSize.s40,
                            ),
                            child: Text(
                              AppStrings.map.tr(),
                              style: Theme.of(context).textTheme.labelMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            AdvertByTypeBloc.get(context).add(
                              ChangeShowItemEvent(
                                !AdvertByTypeBloc.get(context).isList,
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height /
                                  AppSize.s40,
                            ),
                            child: Text(
                              AdvertByTypeBloc.get(context).isList
                                  ? AppStrings.list.tr()
                                  : AppStrings.grid.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color: ColorManager.primaryColorBlue,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
