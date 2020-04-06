import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ContactPicture extends StatelessWidget {
  final String imageUrl;
  final double size;
  const ContactPicture({
    Key key,
    @required this.imageUrl,
     this.size = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imageUrl,
        height: size,
        width: size,
        placeholder: (context, url) => new CircularProgressIndicator(),
      ),
    );
  }
}