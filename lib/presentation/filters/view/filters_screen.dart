import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/common/widget.dart';
import 'package:micro_service_e_commerce/app/resources/color_manager.dart';
import 'package:micro_service_e_commerce/app/resources/strings_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedWidget.appBar(
        context: context,
        title: AppStrings.filters.tr(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / AppSize.s50,
          horizontal: MediaQuery.of(context).size.width / AppSize.s30,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.cities.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    DropdownSearch.multiSelection(
                      items: const [
                        "Brazil",
                        "Italia",
                        "Tunisia",
                        "Canada",
                        "Egypt",
                        "Qatar"
                      ],
                      popupProps: PopupPropsMultiSelection.menu(
                        showSearchBox: true,
                        searchDelay: const Duration(
                          milliseconds: AppIntDuration.duration300,
                        ),
                        showSelectedItems: true,
                        constraints: BoxConstraints(
                          minHeight: AppSize.s20.h,
                          maxHeight: AppSize.s300.h,
                        ),
                        disabledItemFn: (String s) => s.startsWith('   '),
                      ),
                      onChanged: print,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.regions.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    DropdownSearch.multiSelection(
                      items: const [
                        "cairo",
                        "Alex",
                        "Ain shams",
                        "Naser",
                        "Giza",
                        "Aswan"
                      ],
                      popupProps: PopupPropsMultiSelection.menu(
                        showSearchBox: true,
                        searchDelay: const Duration(
                          milliseconds: AppIntDuration.duration300,
                        ),
                        showSelectedItems: true,
                        constraints: BoxConstraints(
                          minHeight: AppSize.s20.h,
                          maxHeight: AppSize.s300.h,
                        ),
                        disabledItemFn: (String s) => s.startsWith('   '),
                      ),
                      onChanged: print,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.subcategories.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    DropdownSearch.multiSelection(
                      items: const [
                        "All",
                        "Category 1",
                        "Category 2",
                        "Category 3",
                        "Category 4",
                        "Category 5"
                      ],
                      popupProps: PopupPropsMultiSelection.menu(
                        showSearchBox: true,
                        searchDelay: const Duration(
                          milliseconds: AppIntDuration.duration300,
                        ),
                        showSelectedItems: true,
                        constraints: BoxConstraints(
                          minHeight: AppSize.s20.h,
                          maxHeight: AppSize.s300.h,
                        ),
                        disabledItemFn: (String s) => s.startsWith('   '),
                      ),
                      onChanged: print,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.rooms.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: AppStrings.from.tr(),
                              hintStyle: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s50,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: AppStrings.to.tr(),
                              hintStyle: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.price.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: AppStrings.from.tr(),
                              hintStyle: Theme.of(context).textTheme.bodySmall,
                              suffix: Text(
                                "QAR",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s50,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: AppStrings.to.tr(),
                              hintStyle: Theme.of(context).textTheme.bodySmall,
                              suffix: Text(
                                "QAR",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.furnishing.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    DropdownSearch.multiSelection(
                      items: const [
                        "All type",
                        "Furnished",
                        "Semi Furnishing",
                        "Not furnished",
                      ],
                      popupProps: PopupPropsMultiSelection.menu(
                        showSearchBox: true,
                        searchDelay: const Duration(
                          milliseconds: AppIntDuration.duration300,
                        ),
                        showSelectedItems: true,
                        constraints: BoxConstraints(
                          minHeight: AppSize.s20.h,
                          maxHeight: AppSize.s300.h,
                        ),
                        disabledItemFn: (String s) => s.startsWith('   '),
                      ),
                      onChanged: print,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.levels.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    DropdownSearch.multiSelection(
                      items: const [
                        "1",
                        "2",
                        "3",
                        "4",
                        "Not Applicable",
                      ],
                      popupProps: PopupPropsMultiSelection.menu(
                        showSearchBox: true,
                        searchDelay: const Duration(
                          milliseconds: AppIntDuration.duration300,
                        ),
                        showSelectedItems: true,
                        constraints: BoxConstraints(
                          minHeight: AppSize.s20.h,
                          maxHeight: AppSize.s300.h,
                        ),
                        disabledItemFn: (String s) => s.startsWith('   '),
                      ),
                      onChanged: print,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.bathrooms.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    DropdownSearch.multiSelection(
                      items: const [
                        "1",
                        "2",
                        "3",
                        "4",
                        "Not Applicable",
                      ],
                      popupProps: PopupPropsMultiSelection.menu(
                        showSearchBox: true,
                        searchDelay: const Duration(
                          milliseconds: AppIntDuration.duration300,
                        ),
                        showSelectedItems: true,
                        constraints: BoxConstraints(
                          minHeight: AppSize.s20.h,
                          maxHeight: AppSize.s300.h,
                        ),
                        disabledItemFn: (String s) => s.startsWith('   '),
                      ),
                      onChanged: print,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.finishing.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    DropdownSearch.multiSelection(
                      items: const [
                        "Fully Finished",
                        "Semi-Finished",
                        "Core & Shell",
                      ],
                      popupProps: PopupPropsMultiSelection.menu(
                        showSearchBox: true,
                        searchDelay: const Duration(
                          milliseconds: AppIntDuration.duration300,
                        ),
                        showSelectedItems: true,
                        constraints: BoxConstraints(
                          minHeight: AppSize.s20.h,
                          maxHeight: AppSize.s300.h,
                        ),
                        disabledItemFn: (String s) => s.startsWith('   '),
                      ),
                      onChanged: print,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.propertyType.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    DropdownSearch.multiSelection(
                      items: const [
                        "Commercial",
                        "Residential",
                      ],
                      popupProps: PopupPropsMultiSelection.menu(
                        showSearchBox: true,
                        searchDelay: const Duration(
                          milliseconds: AppIntDuration.duration300,
                        ),
                        showSelectedItems: true,
                        constraints: BoxConstraints(
                          minHeight: AppSize.s20.h,
                          maxHeight: AppSize.s300.h,
                        ),
                        disabledItemFn: (String s) => s.startsWith('   '),
                      ),
                      onChanged: print,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.areaM2.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: AppStrings.from.tr(),
                              hintStyle: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width / AppSize.s50,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: AppStrings.to.tr(),
                              hintStyle: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                    Text(
                      AppStrings.reference.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s50,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: AppStrings.selectReference.tr(),
                        hintStyle: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / AppSize.s30,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / AppSize.s50,
              ),
              child: SharedWidget.defaultButton(
                context: context,
                function: () {},
                text: AppStrings.search.tr(),
                backgroundColor: ColorManager.primaryColorBlue,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
