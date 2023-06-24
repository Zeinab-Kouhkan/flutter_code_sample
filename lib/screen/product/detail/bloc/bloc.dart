import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/extensions/object.dart';
import 'package:flutter_code_sample/screen/product/detail/args.dart';
import 'package:flutter_code_sample/screen/product/detail/bloc/state.dart';

import '../../../../network/repository.dart';

class ProductDetailBloc extends Cubit<ProductDetailState> {
  final _repository = Repository.getInstance();
  late final ProductDetailArgs _args;

  ProductDetailBloc() : super(const InitialProductDetailState());

  void onReady(ProductDetailArgs args) {
    _args = args;
    productDetail(args.id);
  }

  void productDetail(int id) {
    emit(const ProductDetailState.loading());

    _repository.productDetail(id).then((value) {
      value.data?.let((it) {
        emit(ProductDetailState.loaded(it));
      });
    }).onError((error, stackTrace) {
      ///error is handled in error_handler interceptor
      emit(ProductDetailState.error(error.toString()));
    });
  }
}
