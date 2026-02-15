import 'dart:async';
import 'package:flutter/material.dart';

class Inhalewidget extends StatefulWidget {
  final bool isStart;
  const Inhalewidget({super.key, required this.isStart});

  @override
  State<Inhalewidget> createState() => _InhalewidgetState();
}

class _InhalewidgetState extends State<Inhalewidget>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds:2),
    );


    _colorAnimation = ColorTween(
      begin: Colors.deepPurple,
      end: Colors.purple.shade200,
    ).animate(_controller);
  }

  @override
  void didUpdateWidget(covariant Inhalewidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isStart) {
      _controller.repeat(reverse: true); // deep ↔ light loop
    } else {
      _controller.stop();
      _controller.reset();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: _colorAnimation.value,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              "INHALE",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}
