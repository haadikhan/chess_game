import 'package:chess_game/game/bloc/game_cubit.dart';
import 'package:chess_game/game/bloc/game_state.dart';
import 'package:chess_game/models/custom_paint.dart';
import 'package:chess_game/models/snake.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawingScreen extends StatelessWidget {
  final Snake snake;
  DrawingScreen(this.snake);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(snake),
      child: Center(
        child: Text('This is Line'),
      ),
    );
  }
}
