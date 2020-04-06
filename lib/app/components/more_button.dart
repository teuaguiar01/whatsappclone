import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'more',
      icon: Icon(
        Icons.more_vert,
        color: Color.fromARGB(255, 255, 255, 255),
      ), onPressed: () {},
    );
  }
}