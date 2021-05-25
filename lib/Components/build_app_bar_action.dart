import 'package:flutter/material.dart';

class BuildAppBarAction extends StatelessWidget {
  final String? name;
  final Animation? iconColorTween;
  const BuildAppBarAction({
    Key? key,
    this.name,
    this.iconColorTween,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Text(
          name!,
          style: TextStyle(
            fontSize: 16,
            color: iconColorTween!.value,
          ),
        ),
      ),
    );
  }
}
