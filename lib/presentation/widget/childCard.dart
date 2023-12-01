import 'package:flutter/material.dart';
import 'package:santa/infastructure/core/enum.dart';
import 'package:santa/infastructure/core/util.dart';
import 'package:santa/infastructure/model/child.model.dart';

class ChildCardComponent extends StatelessWidget {
  const ChildCardComponent({super.key, required this.child});
  final ChildModel child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 1, 1, 1).withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 7,
              offset: const Offset(0, 7),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundColor: const Color.fromRGBO(228, 0, 17, 1),
              child: Text(
                getInitials(
                  child.name,
                ),
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  child.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                const SizedBox(width: 5.0),
                Text(
                  child.country,
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              child.status ? Status.Nice.name : Status.Naughty.name,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: child.status
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
