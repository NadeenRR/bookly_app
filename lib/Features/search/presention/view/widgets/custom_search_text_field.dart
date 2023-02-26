import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
          enabledBorder: buildOutLinerInputBorder(),
          focusedBorder: buildOutLinerInputBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          )),
    );
  }

  OutlineInputBorder buildOutLinerInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(12));
  }
}
