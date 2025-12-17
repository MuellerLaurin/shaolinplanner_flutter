import 'package:freezed_annotation/freezed_annotation.dart';

part 'ritual.freezed.dart';
part 'ritual.g.dart';

@freezed
abstract class Ritual with _$Ritual {
  const factory Ritual({
    @JsonKey(name: 'ritual_id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    required String title,
    String? description,
    required double duration,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Ritual;

  factory Ritual.fromJson(Map<String, dynamic> json) => _$RitualFromJson(json);
}
