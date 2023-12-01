

import 'package:freezed_annotation/freezed_annotation.dart';

part 'child.model.freezed.dart';
part 'child.model.g.dart';

@freezed
class ChildModel with _$ChildModel {
  factory ChildModel({
    required String id,
    required String name,
    required String country,
    required bool status,
  
  }) = _ChildModel;

  factory ChildModel.fromJson(Map<String, dynamic> json) =>
      _$ChildModelFromJson(json);
}
//flutter pub get
//flutter pub run flutter_launcher_icons