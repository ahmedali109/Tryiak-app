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
  int selectedIndex = 0;
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: CustomSalomonBottomBar(
        selectedIndex: selectedIndex,
        onTabChange: (index) {
          setState(() {
            selectedIndex = index;
          });
          _goBranch(index);
        },
      ),
    );
  }
}
