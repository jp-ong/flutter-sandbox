import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Status values: `'VERIFIED'` | `'NEEDS_ACTION'` | `'REVOKED'` | `'REJECTED'` | `'EXPIRED'`
TextSpan statusTextSpan(
  String status, {
  String? label,
  Locale? locale,
  List<InlineSpan>? children,
  MouseCursor? mouseCursor,
  void Function(PointerEnterEvent)? onEnter,
  void Function(PointerEnterEvent)? onExit,
  GestureRecognizer? recognizer,
  String? semanticsLabel,
  bool? spellOut,
  TextStyle? style,
}) {
  const defaultTextSpan = TextSpan();
  Color color;
  switch (status) {
    case 'VERIFIED':
      {
        color = const Color(0xff4CA758);
        label = label ?? 'Active';
        break;
      }
    case 'NEEDS_ACTION':
      {
        color = const Color(0xffE89937);
        label = label ?? 'Submitted';
        break;
      }
    case 'REVOKED':
      {
        color = const Color(0xff3363BB);
        label = label ?? 'Revoked';
        break;
      }
    case 'REJECTED':
      {
        color = const Color(0xffC0492C);
        label = label ?? 'Rejected';
        break;
      }
    case 'EXPIRED':
      {
        color = const Color(0xff6F7585);
        label = label ?? 'Expired';
        break;
      }
    default:
      {
        color = const Color(0xff6F7585);
        label = label ?? 'Status';
        break;
      }
  }
  return TextSpan(
    text: label,
    locale: defaultTextSpan.locale,
    children: defaultTextSpan.children,
    mouseCursor: defaultTextSpan.mouseCursor,
    onEnter: defaultTextSpan.onEnter,
    onExit: defaultTextSpan.onExit,
    recognizer: defaultTextSpan.recognizer,
    semanticsLabel: defaultTextSpan.semanticsLabel,
    spellOut: defaultTextSpan.spellOut,
    style: style ??
        TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
  );
}
