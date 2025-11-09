import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/salomon_bottom_bar.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Keep the bottom bar selection in sync with the navigation shell's current index
    final currentIndex = widget.navigationShell.currentIndex;
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: CustomSalomonBottomBar(
        selectedIndex: currentIndex,
        onTabChange: (index) {
          // when user taps the bar, instruct navigation shell to switch branch
          _goBranch(index);
          // rebuild so the bar reflects the change
          setState(() {});
        },
      ),
    );
  }
}
