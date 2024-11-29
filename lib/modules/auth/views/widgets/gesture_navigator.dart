import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class GestureNavigationWidget extends StatefulWidget {
  final WidgetBuilder currentScreenBuilder;

  const GestureNavigationWidget({
    Key? key,
    required this.currentScreenBuilder,
  }) : super(key: key);

  @override
  _GestureNavigationWidgetState createState() =>
      _GestureNavigationWidgetState();
}

class _GestureNavigationWidgetState extends State<GestureNavigationWidget> {
  double _dragOffset = 0.0;
  Widget? _previousScreen;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _loadPreviousScreen();
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.router.addListener(_onRouterStackChanged);
  }

  @override
  void dispose() {
    context.router.removeListener(_onRouterStackChanged);
    super.dispose();
  }

  void _onRouterStackChanged() {
    _loadPreviousScreen();
  }

  void _loadPreviousScreen() {
    final stack = context.router.stack;
    if (stack.length > 1) {
      final previousRoute = stack[stack.length - 2]; // Correct route
      print("route name is ${previousRoute.child}");
      _previousScreen = previousRoute.child;
      setState(() {});
    } else {
      setState(() {
        _previousScreen = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentScreen = widget.currentScreenBuilder(context);

    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          _dragOffset += details.primaryDelta ?? 0;
          if (_dragOffset < 0) _dragOffset = 0;
        });
      },
      onHorizontalDragEnd: (details) {
        final screenWidth = MediaQuery.of(context).size.width;
        if (_dragOffset > screenWidth * 0.4) {
          if (context.router.canPop()) {
            // Prevent errors by checking if canPop
            context.router.popForced();
          }
        } else {
          setState(() {
            _dragOffset = 0.0; // Reset if not far enough
          });
        }
      },
      child: Stack(
        children: [
          if (_previousScreen != null)
            Positioned(
              left: _dragOffset - MediaQuery.of(context).size.width,
              top: 0,
              bottom: 0,
              right: MediaQuery.of(context).size.width - _dragOffset,
              child:
                  IgnorePointer(child: _previousScreen), // Prevent interaction
            ),
          Positioned(
            left: _dragOffset,
            top: 0,
            bottom: 0,
            right: -_dragOffset,
            child: currentScreen,
          ),
        ],
      ),
    );
  }
}
