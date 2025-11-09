import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  final bool autofocus;
  final String initialQuery;

  const SearchScreen({Key? key, this.autofocus = false, this.initialQuery = ''})
      : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialQuery);
    // rebuild when controller text changes so UI updates (results preview)
    _controller.addListener(() {
      if (mounted) setState(() {});
    });
    _focusNode = FocusNode();
    if (widget.autofocus) {
      // delay focus to allow the route transition to complete
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _focusNode.requestFocus();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      // Remove the AppBar and place the search field directly under the status bar
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Column(
            children: [
              // Search field placed at the very top (closer to status bar)
              SizedBox(
                height: 48,
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    hintText: 'Search medicines...',
                    prefixIcon:
                        Icon(Icons.search, color: theme.colorScheme.primary),
                    filled: true,
                    fillColor: theme.colorScheme.secondary.withOpacity(0.06),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 14),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Center(
                  child: Text(
                    _controller.text.isEmpty
                        ? 'Type to search medicines'
                        : 'Results for "${_controller.text}"',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
