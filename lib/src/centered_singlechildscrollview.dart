import 'package:flutter/material.dart';

class CenteredSingleChildScrollView extends StatelessWidget {
  final ScrollController? scrollController;
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final Axis axis;
  final bool reverse;
  final bool? primary;
  final EdgeInsetsGeometry? padding;
  final bool maxWidth;
  final bool maxHeight;

  const CenteredSingleChildScrollView({
    this.scrollController,
    this.children = const [],
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.axis = Axis.vertical,
    this.reverse = false,
    this.padding,
    this.primary,
    this.maxWidth = true,
    this.maxHeight = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          primary: primary,
          padding: padding,
          controller: scrollController,
          reverse: reverse,
          scrollDirection: axis,
          physics: const ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: maxWidth ? constraints.maxWidth : constraints.minWidth,
              minHeight:
                  maxHeight ? constraints.maxHeight : constraints.minHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: mainAxisAlignment,
                children: children,
              ),
            ),
          ),
        );
      },
    );
  }
}
