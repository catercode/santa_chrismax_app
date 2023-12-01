import 'package:flutter/material.dart';
import 'package:santa/presentation/addChild.dart';
import 'package:santa/presentation/widget/ChildrenListComponent.dart';
import 'package:santa/presentation/widget/custom.modal.sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            useRootNavigator: true,
            enableDrag: true,
            isDismissible: true,
            context: context,
            builder: (BuildContext context) {
              return const CustomModalSheet(height: 1.5, main: AddChildForm());
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 60, 71),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 231, 60, 71),
        elevation: 0,
        title: const Text(
          'Santa',
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: const ChildrenListComponent(),
    );
  }
}
