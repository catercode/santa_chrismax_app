import 'dart:math';

import 'package:santa/infastructure/core/enum.dart';

// Function to extract initials from a full name
String getInitials(String fullName) {
  // Split the full name into parts based on space
  List<String> nameParts = fullName.split(' ');

  // Initialize an empty string to store the initials
  String initials = '';

  // Iterate through the name parts to extract initials
  for (String part in nameParts) {
    // Check if the part is not empty before extracting the initial
    if (part.isNotEmpty) {
      // Append the first character of the part to the initials
      initials += part[0];
    }
  }

  // Return the final initials
  return initials;
}



// Function to generate a random alphanumeric ID
String generateId() {
  // Define the set of characters to be used for the ID
  const String charset =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

  // Create a new instance of the Random class for randomization
  Random random = Random();

  // Generate a list of 10 random characters from the charset
  List<String> idList =
      List.generate(10, (index) => charset[random.nextInt(charset.length)]);

  // Join the list of characters to form the final ID and return it
  return idList.join();
}



