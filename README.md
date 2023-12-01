![Screenshot_20231201-171119](https://github.com/catercode/santa_Christmas_app/assets/47371898/68d7168a-b67c-4e43-9d66-f83cb4ac9975)Asanta Crismax App Documentation

Overview
Asanta Christmas app is a Flutter application designed to manage and display a list of children. The app allows users to add new children, view a list of all children, and change the status of each child to either "Nice" or "Naughty." The state management is handled using RiverPod.

Features

1. Displaying Children:
   - The app provides a user-friendly interface to view a list of all children.
   - Each child is presented with relevant details such as full name, country and current status.

2. Adding New Child:
   - Users can easily add a new child to the list.
   - The process involves providing necessary information like the child's full name and Counrty.

3. Changing Child Status:
   - Users have the ability to change the status of a child.
   - The status options are "Nice" or "Naughty."

Getting Started
To run the Asanta Christmas app locally, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/your/repository.git
   ```

2. Navigate to the project directory:
   ```bash
   cd asanta_crismax_app
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## State Management with RiverPod

- **Provider Initialization:**
  ```dart
  final childrenProvider = StateNotifierProvider<ChildrenNotifier, List<Child>>((ref) {
    return ChildrenNotifier();
  });
  ```

- **Notifier Class:**
  ```dart
  class ChildrenNotifier extends Notifier<List<Child>> {
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
  ```

## Screenshots

*Include screenshots of the app in action to provide visual references.*

Home Screen Empty State
![Screenshot_20231201-171119](https://github.com/catercode/santa_Christmas_app/assets/47371898/c8e9c7dd-e592-4280-824d-77cf93282a44)
Home Screen with Children
![Screenshot_20231201-171212](https://github.com/catercode/santa_Christmas_app/assets/47371898/68d7168a-b67c-4e43-9d66-f83cb4ac9975)
Add Child Screen 

![Screenshot_20231201-182501](https://github.com/catercode/santa_Christmas_app/assets/47371898/432b4b2e-8bb3-4aac-a3f6-ddd7f7da32e4)

## Contributions

Contributions to the Asanta Crismax app are welcome! Feel free to open issues, submit pull requests, or suggest improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

*Feel free to customize this documentation according to your project's specific details.*
