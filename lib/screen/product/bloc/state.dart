import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/entity/product.dart';

part 'state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = InitialProductState;

  const factory ProductState.loading() = LoadingProductState;

  const factory ProductState.loaded(List<ProductData> data) = LoadedProductState;

  const factory ProductState.error(String message) = ErrorProductState;
}
