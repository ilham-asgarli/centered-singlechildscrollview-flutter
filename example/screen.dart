import 'package:centered_singlechildscrollview/centered_singlechildscrollview.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredChildScrollView(
      child: CircularProgressIndicator(),
    );
  }
}
