
import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Registration Form",
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
    );
  }
}
