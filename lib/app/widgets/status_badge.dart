import 'package:flutter/material.dart';

class StatusBadge extends StatelessWidget {
  final String status;
  final bool? autofocus;
  final Widget? avatar;
  final Clip? clipBehavior;
  final String? deleteButtonTooltipMessage;
  final Icon? deleteIcon;
  final Color? deleteIconColor;
  final double? elevation;
  final FocusNode? focusNode;
  final IconThemeData? iconTheme;
  final Text? label;
  final TextStyle? labelStyle;
  final void Function()? onDeleted;
  final Color? shadowColor;
  final BorderSide? side;
  final Color? surfaceTintColor;
  final VisualDensity? visualDensity;

  /// Status values: `'VERIFIED'` | `'NEEDS_ACTION'` | `'REVOKED'` | `'REJECTED'` | `'EXPIRED'`
  const StatusBadge(
    this.status, {
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
    this.label,
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
    Chip chip(backgroundColor, color, Text label) {
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
        label: this.label ?? label,
        labelStyle: labelStyle ??
            TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
      );
    }

    switch (status) {
      case 'VERIFIED':
        return chip(const Color(0xffE4F7EC), const Color(0xff3A843F),
            const Text('Verified'));
      case 'NEEDS_ACTION':
        return chip(const Color(0xffFCF7E1), const Color(0xffE89937),
            const Text('Needs Action'));
      case 'REVOKED':
        return chip(const Color(0xffE5F2FD), const Color(0xff3363BB),
            const Text('Revoked'));
      case 'REJECTED':
        return chip(const Color(0xffF6E9E7), const Color(0xffC0492C),
            const Text('Rejected'));
      case 'EXPIRED':
        return chip(const Color(0xffEEEEEE), const Color(0xff50535E),
            const Text('Expired'));
      default:
        return chip(const Color(0xffEEEEEE), const Color(0xff50535E),
            const Text('Status'));
    }
  }
}
