import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Status {
  verified,
  needsAction,
  revoked,
  rejected,
  expired,
}

class StatusBadge extends StatelessWidget {
  final Status status;
  final String label;
  final bool? autofocus;
  final Widget? avatar;
  final Clip? clipBehavior;
  final String? deleteButtonTooltipMessage;
  final Icon? deleteIcon;
  final Color? deleteIconColor;
  final double? elevation;
  final FocusNode? focusNode;
  final IconThemeData? iconTheme;
  final TextStyle? labelStyle;
  final void Function()? onDeleted;
  final Color? shadowColor;
  final BorderSide? side;
  final Color? surfaceTintColor;
  final VisualDensity? visualDensity;

  const StatusBadge(
    this.status,
    this.label, {
    super.key,
    this.autofocus,
    this.avatar,
    this.clipBehavior,
    this.deleteButtonTooltipMessage,
    this.deleteIcon,
    this.deleteIconColor,
    this.elevation,
    this.focusNode,
    this.iconTheme,
    this.labelStyle,
    this.onDeleted,
    this.shadowColor,
    this.side,
    this.surfaceTintColor,
    this.visualDensity,
  });

  final Chip _defaultChip = const Chip(
    label: Text('Default'),
  );

  @override
  Widget build(BuildContext context) {
    Chip chip(backgroundColor, color) {
      return Chip(
        autofocus: autofocus ?? _defaultChip.autofocus,
        avatar: avatar ?? _defaultChip.avatar,
        clipBehavior: clipBehavior ?? _defaultChip.clipBehavior,
        deleteButtonTooltipMessage: deleteButtonTooltipMessage ??
            _defaultChip.deleteButtonTooltipMessage,
        deleteIcon: deleteIcon ?? _defaultChip.deleteIcon,
        deleteIconColor: deleteIconColor ?? _defaultChip.deleteIconColor,
        elevation: elevation ?? _defaultChip.elevation,
        focusNode: focusNode ?? _defaultChip.focusNode,
        iconTheme: iconTheme ?? _defaultChip.iconTheme,
        onDeleted: onDeleted ?? _defaultChip.onDeleted,
        shadowColor: shadowColor ?? _defaultChip.shadowColor,
        side: side ?? _defaultChip.side,
        surfaceTintColor: surfaceTintColor ?? _defaultChip.surfaceTintColor,
        visualDensity: visualDensity ?? _defaultChip.visualDensity,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        labelPadding: const EdgeInsets.all(0),
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        label: Text(label.capitalize ?? label),
        labelStyle: labelStyle ??
            TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
      );
    }

    switch (status) {
      case Status.verified:
        return chip(const Color(0xffE4F7EC), const Color(0xff3A843F));
      case Status.needsAction:
        return chip(const Color(0xffFCF7E1), const Color(0xffE89937));
      case Status.revoked:
        return chip(const Color(0xffE5F2FD), const Color(0xff3363BB));
      case Status.rejected:
        return chip(const Color(0xffF6E9E7), const Color(0xffC0492C));
      case Status.expired:
      default:
        return chip(const Color(0xffEEEEEE), const Color(0xff50535E));
    }
  }
}
