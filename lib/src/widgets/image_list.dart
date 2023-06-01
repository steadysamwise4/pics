import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  const ImageList(this.images, {super.key});

  @override
  Widget build(context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return Image.network(images[index].url);
      }),
      itemCount: images.length,
    );
  }
}
