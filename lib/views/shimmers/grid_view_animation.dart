import 'package:flutter/material.dart';

class SlideInGridItem extends StatefulWidget {
  final Widget child;

  const SlideInGridItem({required this.child, super.key});

  @override
  _SlideInGridItemState createState() => _SlideInGridItemState();
}

class _SlideInGridItemState extends State<SlideInGridItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.5, -0.5), // Start below the screen
      end: Offset.zero, // End at the normal position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.slowMiddle,
    ));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class AnimatedGridItem extends StatefulWidget {
  final Widget child;

  const AnimatedGridItem({required this.child, super.key});

  @override
  _AnimatedGridItemState createState() => _AnimatedGridItemState();
}

class _AnimatedGridItemState extends State<AnimatedGridItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
