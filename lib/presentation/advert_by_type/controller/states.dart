import 'package:equatable/equatable.dart';

class AdvertByTypeStates extends Equatable {
  final bool isList;
  final bool isSorted;
  const AdvertByTypeStates({
    this.isList = true,
    this.isSorted = false,
  });
  AdvertByTypeStates copyWith({
    bool? isList,
    bool? isSorted,
  }) =>
      AdvertByTypeStates(
        isList: isList ?? this.isList,
        isSorted: isSorted ?? this.isSorted,
      );
  @override
  List<Object?> get props => [
        isList,
        isSorted,
      ];
}
