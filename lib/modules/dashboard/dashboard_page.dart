import 'package:didpoolfit/modules/dashboard/sections/header_section.dart';
import 'package:didpoolfit/modules/dashboard/sections/overall_status_section.dart';
import 'package:didpoolfit/modules/dashboard/sections/today_target_section.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 24),
          HeaderSection(),
          SizedBox(height: 24),
          OverallStatusSection(),
          SizedBox(height: 24),
          TodayTargetSection(),
        ],
      ),
    );
  }
}
