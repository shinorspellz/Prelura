import 'dart:core';

import 'package:flutter/material.dart';

class TypingIndicator extends StatefulWidget {
  final String username;

  const TypingIndicator({
    super.key,
    required this.username,
  });
  @override
  _TypingIndicatorState createState() => _TypingIndicatorState();
}

class _TypingIndicatorState extends State<TypingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(4, (index) {
            return index == 3
                ? Text(
                    " ${widget.username} is typing",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 13,
                          color: Theme.of(context).primaryColor,
                        ),
                  )
                : FadeTransition(
                    opacity: _animation,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  );
          }),
        ),
      ),
    );
  }
}
