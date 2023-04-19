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
          StatusBadge(Status.verified, 'Fully Verified'),
          SizedBox(height: 16),
          StatusBadge(Status.needsAction, 'Needs Action'),
          SizedBox(height: 16),
          StatusBadge(Status.revoked, 'Revoked'),
          SizedBox(height: 16),
          StatusBadge(Status.rejected, 'Rejected'),
          SizedBox(height: 16),
          StatusBadge(Status.expired, 'Expired'),
        ],
      ),
    );
  }
}
