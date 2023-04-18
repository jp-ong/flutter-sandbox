import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusBadge extends StatelessWidget {
  final String status;
  final String label;

  const StatusBadge(
    this.status,
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Chip chip(backgroundColor, color) {
      return Chip(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        labelPadding: const EdgeInsets.all(0),
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        label: Text(
          label.capitalize ?? '',
          style: TextStyle(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    switch (status) {
      case 'VERIFIED':
        return chip(const Color(0xffE4F7EC), const Color(0xff3A843F));
      case 'NEEDS_ACTION':
        return chip(const Color(0xffFCF7E1), const Color(0xffE89937));
      case 'REVOKED':
        return chip(const Color(0xffE5F2FD), const Color(0xff3363BB));
      case 'REJECTED':
        return chip(const Color(0xffF6E9E7), const Color(0xffC0492C));
      case 'EXPIRED':
      default:
        return chip(const Color(0xffEEEEEE), const Color(0xff50535E));
    }
  }
}

// class StatusBadge extends StatelessWidget {
//   final Color backgroundColor;
//   final Color color;
//   final String status;
//   final String text;

//   const StatusBadge(
//     this.status, {
//     super.key,
//     this.backgroundColor = const Color(0xffEEEEEE),
//     this.color = const Color(0xff50535E),
//     this.text = '',
//   });

//   static const StatusBadge statusBadge = StatusBadge(
//     '',
//     backgroundColor: Color(0xffEEEEEE),
//     color: Color(0xff50535E),
//     text: 'Badge',
//   );

//   static const StatusBadge needsAction = StatusBadge(
//     '',
//     backgroundColor: Color(0xffFCF7E1),
//     color: Color(0xffE89937),
//     text: 'Needs Action',
//   );

//   static const StatusBadge fullyVerified = StatusBadge(
//     '',
//     backgroundColor: Color(0xffE4F7EC),
//     color: Color(0xff3A843F),
//     text: 'Fully Verified',
//   );

//   static const StatusBadge expired = StatusBadge(
//     '',
//     backgroundColor: Color(0xffEEEEEE),
//     color: Color(0xff50535E),
//     text: 'Expired',
//   );

//   static const StatusBadge rejected = StatusBadge(
//     '',
//     backgroundColor: Color(0xffF6E9E7),
//     color: Color(0xffC0492C),
//     text: 'Rejected',
//   );

//   static const StatusBadge revoked = StatusBadge(
//     '',
//     backgroundColor: Color(0xffE5F2FD),
//     color: Color(0xff3363BB),
//     text: 'Revoked',
//   );

//   @override
//   Widget build(BuildContext context) {
//     switch (status) {
//       case 'VERIFIED':
//         return StatusBadge.fullyVerified;
//       case 'NEEDS_ACTION':
//         return StatusBadge.needsAction;
//       case 'REVOKED':
//         return StatusBadge.revoked;
//       case 'REJECTED':
//         return StatusBadge.rejected;
//       case 'EXPIRED':
//         return StatusBadge.expired;

//       default:
//         return Chip(
//           padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
//           labelPadding: const EdgeInsets.all(0),
//           backgroundColor: backgroundColor,
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(8),
//             ),
//           ),
//           label: Text(
//             text.isNotEmpty ? text.capitalize ?? '' : 'Badge',
//             style: TextStyle(
//               color: color,
//               fontSize: 12,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         );
//     }
//   }
// }
