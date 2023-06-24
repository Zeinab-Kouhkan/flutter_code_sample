import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';

@JsonSerializable(createToJson: false)
class ProductData {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'image')
  final String image;

  ProductData(this.id, this.title, this.image);

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}
