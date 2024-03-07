
import 'package:flutter/material.dart';
class ImageItem extends StatefulWidget {
  const ImageItem({super.key});
  @override
  State<ImageItem> createState() => _ImageItemState();
}
class _ImageItemState extends State<ImageItem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text('MemberShip List'),
    ),
    ),
    );
  }
}


