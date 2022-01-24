import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          fillColor: Colors.grey[200],
          filled: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.all(12),
        ),
        cursorHeight: 20.0,
      ),
    );
  }
}
