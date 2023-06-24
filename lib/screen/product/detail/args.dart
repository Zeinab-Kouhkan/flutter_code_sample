import '../../../routes.dart';

class ProductDetailArgs {
  ProductDetailArgs(this.id);

  final int id;

  String get route => Routes.productDetail;
}
