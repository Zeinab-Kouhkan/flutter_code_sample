import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_sample/extensions/object.dart';
import 'package:flutter_code_sample/screen/product/bloc/state.dart';

import '../../../network/repository.dart';

class ProductBloc extends Cubit<ProductState> {
  final _repository = Repository.getInstance();

  ProductBloc() : super(const InitialProductState()) {
    products();
  }

  void products() {
    emit(const ProductState.loading());

    _repository.products().then((value) {
      value.data?.let((it) {
        emit(ProductState.loaded(it));
      });
    }).onError((error, stackTrace) {
      ///error is handled in error_handler interceptor
      emit(ProductState.error(error.toString()));
    });
  }
}
