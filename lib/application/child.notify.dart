import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:santa/application/child.state.dart';
import 'package:santa/infastructure/model/child.model.dart';

final childrenProvider =
    StateNotifierProvider<ChildNotifier, ChildState>((ref) => ChildNotifier());

class ChildNotifier extends StateNotifier<ChildState> {
  ChildNotifier() : super(const ChildState());

  void fetchChildren() async {
    // Update the state with the same children (does not perform fetching)
    state = state.copyWith(children: state.children);
  }

// Define a method to add a child to the list
  Future<bool> addChild({required ChildModel child}) async {
    // Create a new list by combining the existing children with the new child
    final updatedChildren = AsyncData([...state.children.value!, child]);

    // Update the state with the new list of children and set success and loading flags
    state = state.copyWith(
      isSuccess: true,
      isLoading: false,
      children: updatedChildren,
    );

    // Return the success status after updating the state
    return state.isSuccess;
  }

  // Define a method to toggle the nice status of a child
  Future<bool> toggleNiceStatus({
    required ChildModel selectedChild,
    required String id,
  }) async {
    // Create a copy of the list of children to modify
    List<ChildModel> newChild = List.from(state.children.value!.toList());

    // Iterate through the list to find and update the selected child's status
    for (int i = 0; i < newChild.length; i++) {
      if (newChild[i].id == selectedChild.id) {
        // Create a copy of the selected child with the updated status
        final updateChildStatus =
            selectedChild.copyWith(status: !selectedChild.status);

        // Replace the old child with the updated one
        newChild[i] = updateChildStatus;

        // Break out of the loop since the update is done
        break;
      }
    }

    // Update the state with the new list of children, set loading to false, and set success to true
    state = state.copyWith(
      children: AsyncData(newChild),
      isLoading: false,
      isSuccess: true,
    );

    // Return the success status after updating the state
    return state.isSuccess;
  }
}
