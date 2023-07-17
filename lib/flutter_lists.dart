library flutter_lists;

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class ListIcon{ // List of predefined Icons 
  static const Icon Bullet = Icon(IconData(0x2022)); // Icon for 
}
class UnorderedList<T> extends StatefulWidget {
  Function(T? item)? onTap;
  UnorderedList({super.key,this.onTap});

  @override
  State<UnorderedList> createState() => _UnorderedListState();
}

class _UnorderedListState extends State<UnorderedList> {
  @override
  Widget build(BuildContext context) {
    return ListIcon.Bullet;
  }
}