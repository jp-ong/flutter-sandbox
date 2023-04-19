import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/widgets/status_badge.dart';

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
        children: const [
          StatusBadge('VERIFIED'),
          SizedBox(height: 16),
          StatusBadge('NEEDS_ACTION'),
          SizedBox(height: 16),
          StatusBadge('REVOKED'),
          SizedBox(height: 16),
          StatusBadge('REJECTED'),
          SizedBox(height: 16),
          StatusBadge('EXPIRED'),
        ],
      ),
    );
  }
}
