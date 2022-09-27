import 'package:flutter/material.dart';

class CenteredSingleChildScrollView extends StatelessWidget {
  final List<Widget>? children;
  final MainAxisAlignment? mainAxisAlignment;

  const CenteredSingleChildScrollView(
      {this.children, this.mainAxisAlignment, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment:
                    mainAxisAlignment ?? MainAxisAlignment.center,
                children: children ?? [],
              ),
            ),
          ),
        );
      },
    );
  }
}
