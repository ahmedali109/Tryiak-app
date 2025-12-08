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
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).brightness == Brightness.dark
                  ? const Color(0xFF4A90E2)
                  : const Color(0xFF4A90E2),
              Theme.of(context).brightness == Brightness.dark
                  ? const Color(0xFF357ABD)
                  : const Color(0xFF2868A6),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF4A90E2).withOpacity(0.4),
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            //TODO : implement action
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: const Icon(
            Icons.upload_rounded,
            size: 28,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
