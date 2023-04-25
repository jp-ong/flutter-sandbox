import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/widgets/status_badge.dart';
import 'package:flutter_sandbox/app/widgets/status_text.dart';

import 'package:get/get.dart';

import '../controllers/chips_controller.dart';

class ChipsView extends GetView<ChipsController> {
  const ChipsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final List sampleStatusResponse = [
    //   {"name": "Fully Verified", "value": "VERIFIED"},
    //   {"name": "Needs Action", "value": "NEEDS_ACTION"},
    //   {"name": "Revoked", "value": "REVOKED"},
    //   {"name": "Rejected", "value": "REJECTED"},
    //   {"name": "Expired", "value": "EXPIRED"},
    // ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Status Badges'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const StatusBadge('VERIFIED'),
          const SizedBox(height: 16),
          const StatusBadge('NEEDS_ACTION'),
          const SizedBox(height: 16),
          const StatusBadge('REVOKED'),
          const SizedBox(height: 16),
          const StatusBadge('REJECTED'),
          const SizedBox(height: 16),
          const StatusBadge('EXPIRED'),
          const SizedBox(height: 16),
          RichText(
            text: TextSpan(
              children: [
                statusTextSpan('VERIFIED'),
                statusTextSpan('NEEDS_ACTION'),
                statusTextSpan('REVOKED'),
                statusTextSpan('REJECTED'),
                statusTextSpan('EXPIRED'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
