import 'package:flutter/material.dart';
class TableItem extends StatefulWidget {
  const TableItem({super.key});

  @override
  State<TableItem> createState() => _TableItemState();
}

class _TableItemState extends State<TableItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Center(
        child: Text('mmmmmm',style: TextStyle(color: Colors.black,)),
      ),
    );
  }
  }
