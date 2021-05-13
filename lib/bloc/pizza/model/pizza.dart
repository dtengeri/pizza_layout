import 'package:freezed_annotation/freezed_annotation.dart';

part 'pizza.freezed.dart';
part 'pizza.g.dart';

@freezed
class Pizza with _$Pizza {
  const factory Pizza({
    required int id,
    required String name,
    required String topping,
    required double price,
    required String imagePath,
    required int rating,
  }) = _Pizza;

  factory Pizza.fromJson(Map<String, dynamic> json) => _$PizzaFromJson(json);
}
