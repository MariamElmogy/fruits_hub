import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/styles.dart';

AppBar buildAppBar(context, {required String title}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(Icons.arrow_back_ios_new),
    ),
    centerTitle: true,
    title: Text(title, style: Styles.bold19, textAlign: TextAlign.center),
  );
}
