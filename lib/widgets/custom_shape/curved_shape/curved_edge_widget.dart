
import 'package:bms/widgets/custom_shape/curved_shape/curver_edges.dart';
import 'package:flutter/material.dart';


class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key, this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdges(),
      child: child
    );
  }
}
