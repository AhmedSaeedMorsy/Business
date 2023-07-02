import 'package:equatable/equatable.dart';

class ProductDetailsStates extends Equatable {
  final bool isInfavorit;
  const ProductDetailsStates({
    this.isInfavorit = false,
  });
  ProductDetailsStates copyWith({
    bool? isInfavorit,
  }) =>
      ProductDetailsStates(
        isInfavorit: isInfavorit ?? this.isInfavorit,
      );
  @override
  List<Object?> get props => [
        isInfavorit,
      ];
}
