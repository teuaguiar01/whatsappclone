import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        tooltip: "search",
        icon: Icon(
          Icons.search,
          color: Color.fromARGB(255, 255, 255, 255),
        ), onPressed: () {},);
  }
}
