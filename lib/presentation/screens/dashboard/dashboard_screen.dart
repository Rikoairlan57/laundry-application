import 'package:flutter/material.dart';
import 'package:laundry_application/core/theme/app_theme.dart';
import 'package:laundry_application/logic/cubits/dashboard/dashboard_cubit.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late DashboardCubit _dashboardCubit;

  @override
  void initState() {
    super.initState();
    _dashboardCubit = DashboardCubit()..loadDashboard();
  }

  @override
  void dispose() {
    _dashboardCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Dashboard Screen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
