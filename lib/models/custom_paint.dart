import 'package:chess_game/models/snake.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  final Snake snake;
  LinePainter(this.snake);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.amber;
    paint.strokeWidth = 5;
    canvas.drawCircle(
      Offset(snake.posX, snake.posY),
      10,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
