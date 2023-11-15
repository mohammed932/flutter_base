import 'package:freezed_annotation/freezed_annotation.dart';

part 'carousel_model.freezed.dart';
part 'carousel_model.g.dart';

@JsonSerializable()
@freezed
class CarouselModel with _$CarouselModel {
  const CarouselModel._(); // private constructor for the freezed union

  const factory CarouselModel({
    int? id,
    String? title,
    String? image,
    String? type,
  }) = _CarouselModel;

  factory CarouselModel.fromJson(Map<String, dynamic> json) =>
      _$CarouselModelFromJson(json);
}
