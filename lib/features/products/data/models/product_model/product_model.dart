import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._(); // private constructor for the freezed union

  const factory ProductModel({
    required int id,
    @Default('') String title,
    @Default('') String image,
    @Default('') String description,
    RatingModel? rating,
    required double price,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class RatingModel with _$RatingModel {
  const RatingModel._(); // private constructor for the freezed union

  const factory RatingModel({
    required double rate,
    required int count,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}
