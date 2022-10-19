import 'package:json_annotation/json_annotation.dart';

part 'dynamic_view_model.g.dart';

@JsonSerializable()
class DynamicViewModel {
  @JsonKey(defaultValue: "", name: "title")
  String code;

  @JsonKey(defaultValue: 0.0, name: "width")
  double width;

  @JsonKey(defaultValue: 0.0, name: "height")
  double height;

  @JsonKey(defaultValue: 0, name: "sort")
  int sort;

  @JsonKey(defaultValue: "", name: "group")
  String group;

  @JsonKey(defaultValue: "", name: "color")
  String color;

  @JsonKey(defaultValue: "", name: "type")
  String type;


  DynamicViewModel({
    required this.code,
    required this.width,
    required this.type,
    required this.color,
    required this.group,
    required this.sort,
    required this.height,
  });

  factory DynamicViewModel.fromJson(Map<String, dynamic> json) =>
      _$DynamicViewModelFromJson(json);
  Map<String, dynamic> toJson() => _$DynamicViewModelToJson(this);
}

