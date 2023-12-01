import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:santa/infastructure/model/child.model.dart';

part 'child.state.freezed.dart';

@freezed
class ChildState with _$ChildState {
  const factory ChildState({
    @Default(AsyncData([])) AsyncValue<List<dynamic>> children,
    @Default([]) List<ChildModel> filteredTodo,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool status,
  }) = _ChildState;
}
