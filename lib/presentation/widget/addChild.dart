import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:santa/application/child.notify.dart';
import 'package:santa/infastructure/core/util.dart';
import 'package:santa/infastructure/model/child.model.dart';

class AddChildForm extends ConsumerStatefulWidget {
  const AddChildForm({super.key});

  @override
  ConsumerState<AddChildForm> createState() => _AddChildFormState();
}

class _AddChildFormState extends ConsumerState<AddChildForm> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController countryController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            const Text(
              "Add New Child",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              key: const Key("addFullNameField"),
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  labelText: 'Full Name',
                  errorStyle:
                      const TextStyle(color: Colors.black, fontSize: 15)),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter child fullname";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
               key: const Key("addCountryField"),
              controller: countryController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  labelText: 'Country',
                  errorStyle:
                      const TextStyle(color: Colors.black, fontSize: 15)),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter child county";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 33,
            ),
            SizedBox(
              width: ResponsiveWrapper.of(context).scaledWidth,
              child: ElevatedButton(
                 key: const Key("addChildButton"),
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final name = nameController.text;
                    final country = countryController.text;
                    ref
                        .read(childrenProvider.notifier)
                        .addChild(
                            child: ChildModel(
                                id: generateId(),
                                name: name,
                                country: country,
                                status: true))
                        .then((value) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.black,
                          content: Text(
                            "Child added successfully",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )));
                      Navigator.pop(context);
                      nameController.clear();
                      countryController.clear();
                    });
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text('Add Child'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
