import 'package:cv_web/core/constants/app_colors.dart';
import 'package:cv_web/views/desktop/widgets/liquid_pool_painter.dart';
import 'package:flutter/material.dart';

class LiquidSelfieWidget extends StatefulWidget {
  final double width;
  final double height;

  const LiquidSelfieWidget({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  State<LiquidSelfieWidget> createState() => _LiquidSelfieWidgetState();
}

class _LiquidSelfieWidgetState extends State<LiquidSelfieWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 25),
      vsync: this,
    )..repeat();
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return CustomPaint(
              size: Size(widget.width, widget.height),
              painter: LiquidPoolPainter(
                animation: _animation.value * 50,
                color: AppColors.blue,
              ),
            );
          },
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: widget.width * 0.75,
            height: widget.height * 1,
            child: Image.asset(
              'assets/images/img_selfie.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
