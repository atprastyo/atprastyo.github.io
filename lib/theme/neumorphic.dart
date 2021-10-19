import 'package:flutter/material.dart';

enum Curvature { concave, convex, flat }

class NeumorphicContainer extends StatelessWidget {
  const NeumorphicContainer({
    this.child,
    this.height = 0,
    this.width = 0,
    this.depth = 1,
    this.borderThickness = 1,
    this.primaryColor,
    this.borderColor,
    this.spread,
    this.borderRadius = 8,
    this.customRadius,
    this.curvature = Curvature.flat,
  });

  final double height;
  final double width;
  final int? depth;
  final Color? primaryColor;
  final Color? borderColor;
  final double borderThickness;
  final double? spread;
  final Widget? child;
  final double borderRadius;
  final BorderRadius? customRadius;
  final Curvature curvature;

  List<Color> smoothGradient(Color baseColor, int depth) {
    return [
      baseColor,
      baseColor,
    ];
  }

  List<Color> concaveGradients(Color baseColor, int depth) {
    return [
      _baseColor(baseColor, 0 - depth),
      _baseColor(baseColor, depth),
    ];
  }

  List<Color> convexGradients(Color baseColor, int depth) {
    return [
      _baseColor(baseColor, depth),
      _baseColor(baseColor, 0 - depth),
    ];
  }

  Color _baseColor(Color color, int amount) {
    Map<String, int> colors = <String, int>{
      'red': color.red,
      'green': color.green,
      'blue': color.blue
    };
    colors = colors.map((String key, int value) {
      if (value + amount < 0) {
        return MapEntry(key, 0);
      }
      if (value + amount > 255) {
        return MapEntry(key, 255);
      }
      return MapEntry(key, value + amount);
    });
    return Color.fromRGBO(colors['red']!, colors['green']!, colors['blue']!, 1);
  }

  @override
  Widget build(BuildContext context) {
    final double? heightValue = height;
    final double? widthValue = width;
    final int depthValue = depth ?? 20;
    Color colorValue = primaryColor ?? Color(0xFFf0f0f0);
    final double spreadValue = spread ?? 6;
    const bool eValue = false;
    BorderRadius borderRadiusValue = borderRadius == null
        ? BorderRadius.zero
        : BorderRadius.circular(borderRadius);
    final double thicknessValue = borderThickness == null ? 0 : borderThickness;
    final Border borderValue = borderColor == null
        ? Border.all(color: Colors.transparent, width: thicknessValue)
        : Border.all(color: borderColor!, width: thicknessValue);

    if (customRadius != null) {
      borderRadiusValue = customRadius!;
    }
    final Curvature curveTypeValue = curvature;

    List<BoxShadow> shadowList = [
      BoxShadow(
          color: _baseColor(colorValue, eValue ? 0 - depthValue : depthValue),
          offset: Offset(0 - spreadValue, 0 - spreadValue),
          blurRadius: spreadValue),
      BoxShadow(
          color: _baseColor(colorValue, eValue ? depthValue : 0 - depthValue),
          offset: Offset(spreadValue, spreadValue),
          blurRadius: spreadValue)
    ];

    if (eValue) shadowList = shadowList.reversed.toList();
    if (eValue) colorValue = _baseColor(colorValue, 0 - depthValue ~/ 2);

    List<Color> gradientColors;
    switch (curveTypeValue) {
      case Curvature.concave:
        gradientColors = concaveGradients(colorValue, depthValue);
        break;
      case Curvature.convex:
        gradientColors = convexGradients(colorValue, depthValue);
        break;
      case Curvature.flat:
        gradientColors = smoothGradient(colorValue, depthValue);
        break;
    }

    return Container(
      height: heightValue,
      width: widthValue,
      child: child,
      decoration: BoxDecoration(
        border: borderValue,
        borderRadius: borderRadiusValue,
        color: colorValue,
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   colors: gradientColors,
        // ),
        boxShadow: shadowList,
      ),
    );
  }
}
