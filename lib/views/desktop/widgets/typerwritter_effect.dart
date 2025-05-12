import 'package:flutter/material.dart';

class TypewriterEffect extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Duration duration;

  const TypewriterEffect({
    super.key,
    required this.text,
    required this.style,
    this.duration = const Duration(milliseconds: 100),
  });

  @override
  State<TypewriterEffect> createState() => _TypewriterEffectState();
}

class _TypewriterEffectState extends State<TypewriterEffect> {
  String _displayText = '';
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  void _startTyping() {
    Future.delayed(widget.duration, () {
      if (_currentIndex < widget.text.length) {
        setState(() {
          _displayText += widget.text[_currentIndex];
          _currentIndex++;
        });
        _startTyping();
      } else {
        // Reset and start again after a delay
        Future.delayed(const Duration(seconds: 1), () {
          setState(() {
            _displayText = '';
            _currentIndex = 0;
          });
          _startTyping();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayText,
      style: widget.style,
    );
  }
}