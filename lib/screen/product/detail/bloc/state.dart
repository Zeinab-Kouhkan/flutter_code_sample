import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/entity/product.dart';

part 'state.freezed.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = InitialProductDetailState;

  const factory ProductDetailState.loading() = LoadingProductDetailState;

  const factory ProductDetailState.loaded(ProductData data) = LoadedProductDetailState;

  const factory ProductDetailState.error(String message) = ErrorProductDetailState;
}
