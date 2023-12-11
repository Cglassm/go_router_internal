import 'package:go_router_ui/go_router_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GRIconsLight extends GRIcon {
  @override
  SvgPicture backIcon({double? size, Color? color}) {
    return super.backIcon(
      color: color ?? GRColors.black,
      size: size ?? 14,
    );
  }

  @override
  SvgPicture emailOutline({double? size, Color? color}) {
    return super.emailOutline(
      color: color ?? GRColors.black,
      size: size ?? 14,
    );
  }
}
