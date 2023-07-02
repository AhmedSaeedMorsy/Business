// ignore_for_file: camel_case_types

import 'package:easy_localization/easy_localization.dart';

import '../resources/assets_manager.dart';
import '../resources/strings_manager.dart';

enum State {
  success,
  error,
  init,
  loading,
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

enum LanguageEnum {
  english,
  arabic,
  france,
}

enum PackageEnum {
  gold,
  silver,
}

List<String> categoriesName = [
  AppStrings.property.tr(),
  AppStrings.lands.tr(),
  AppStrings.furniture.tr(),
  AppStrings.cars.tr(),
  AppStrings.motorcycles.tr(),
  AppStrings.spareParts.tr(),
  AppStrings.offshoreTools.tr(),
  AppStrings.heavyEquipment.tr(),
  AppStrings.pesticidesAndPestControl.tr(),
  AppStrings.occasions.tr(),
  AppStrings.transportSRV.tr(),
  AppStrings.gardeningAndAgriculture.tr(),
  AppStrings.commercialServices.tr(),
  AppStrings.airConditioner.tr(),
  AppStrings.cleaningServices.tr(),
  AppStrings.construction.tr(),
  AppStrings.moveFurniture.tr(),
  AppStrings.decorAndInteriorDesign.tr(),
  AppStrings.education.tr(),
  AppStrings.sellingProjects.tr(),
  AppStrings.maintenanceServices.tr(),
  AppStrings.employers.tr(),
  AppStrings.menStuff.tr(),
  AppStrings.foods.tr(),
  AppStrings.jobApplicats.tr(),
  AppStrings.womenStuff.tr(),
  AppStrings.kidsStuff.tr(),
  AppStrings.gifts.tr(),
  AppStrings.mobiles.tr(),
  AppStrings.homeAppliance.tr(),
  AppStrings.electronics.tr(),
  AppStrings.cameraAndVideos.tr(),
  AppStrings.electronicGames.tr(),
  AppStrings.health.tr(),
  AppStrings.sportAndFitness.tr(),
  AppStrings.smartAndBicycle.tr(),
  AppStrings.tourism.tr(),
  AppStrings.tripAndCamping.tr(),
  AppStrings.horsesSheepAndCamels.tr(),
  AppStrings.otherAnimals.tr(),
  AppStrings.birds.tr(),
  AppStrings.specialCoins.tr(),
  AppStrings.inquires.tr(),
  AppStrings.antiques.tr(),
  AppStrings.charity.tr(),
  AppStrings.others.tr(),
];
List<String> categoriesImage = [
  AssetsManager.property,
  AssetsManager.lands,
  AssetsManager.furniture,
  AssetsManager.cars,
  AssetsManager.motorcycles,
  AssetsManager.spare,
  AssetsManager.offshoreTools,
  AssetsManager.heavyEquipment,
  AssetsManager.pesticidesAndPetControl,
  AssetsManager.occasions,
  AssetsManager.yellowTax,
  AssetsManager.plant,
  AssetsManager.commercial,
  AssetsManager.airCondition,
  AssetsManager.cleaningServices,
  AssetsManager.pilePerforatedBrick,
  AssetsManager.movingFurniture,
  AssetsManager.decoration,
  AssetsManager.education,
  AssetsManager.buying,
  AssetsManager.maintenance,
  AssetsManager.employers,
  AssetsManager.men,
  AssetsManager.foods,
  AssetsManager.jopApplicants,
  AssetsManager.wommen,
  AssetsManager.kids,
  AssetsManager.gifts,
  AssetsManager.mobiles,
  AssetsManager.homeAppliance,
  AssetsManager.electronics,
  AssetsManager.cameraAndVideos,
  AssetsManager.electronicGames,
  AssetsManager.health,
  AssetsManager.sportAndFitness,
  AssetsManager.smartAndBicycle,
  AssetsManager.airplan,
  AssetsManager.camping,
  AssetsManager.camal,
  AssetsManager.rabbit,
  AssetsManager.bird,
  AssetsManager.coins,
  AssetsManager.inquires,
  AssetsManager.antiques,
  AssetsManager.charitable,
  AssetsManager.book,
];
