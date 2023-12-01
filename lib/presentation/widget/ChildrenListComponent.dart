import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:santa/application/child.notify.dart';
import 'package:santa/presentation/widget/childCard.dart';

class ChildrenListComponent extends ConsumerWidget {
  const ChildrenListComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(childrenProvider).children.when(
          data: (child) => child.isNotEmpty
              ? ListView.builder(
                  itemCount: child.length,
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        ref.read(childrenProvider.notifier).toggleNiceStatus(
                            id: child[index].id, selectedChild: child[index]);
                      },
                      child: ChildCardComponent(
                        child: child[index],
                      )))
              : Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/icons8-santa-80.png",
                    ),
                    const Text(
                      "No Child Found",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    )
                  ],
                )),
          error: (error, stackTrace) => const Text("No Child Found"),
          loading: () => const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(color: Colors.black)),
        );
  }
}
