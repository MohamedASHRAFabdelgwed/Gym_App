/*
import 'package:flutter/material.dart';
import 'image_item.dart';
import 'table_item.dart';
class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Item'),),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.separated(
                itemBuilder: (_, __)=>const ImageItem(),
                separatorBuilder: (_, __ )=>const SizedBox(width:16 ,),
                itemCount: 1),
          ),
          const SizedBox(
            height: 10,
          ),
          Scaffold(
            body: Column(
              children: [
                Expanded(
              flex: 8,
              child: ListView.separated(
                  itemBuilder: (_, __)=> const TableItem(),
                  separatorBuilder: (_, __ )=>const SizedBox(width:20,),
                  itemCount: 1),
            ),
          ]
    ),
          ),
      ]
      ),
    );
  }
}

 */