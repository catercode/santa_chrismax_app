

import 'package:freezed_annotation/freezed_annotation.dart';

// Use the `@freezed` annotation to generate boilerplate code for freezed classes
part 'child.model.freezed.dart';
part 'child.model.g.dart';



// The `ChildModel` class represents a child with attributes
@freezed
class ChildModel with _$ChildModel {
  // A factory constructor for creating instances of ChildModel
  factory ChildModel({
    required String id,          // Unique identifier for the child
    required String name,        // Name of the child
    required String country,     // Country where the child is from
    required bool status,        // Nice or naughty status of the child
  }) = _ChildModel;
}
