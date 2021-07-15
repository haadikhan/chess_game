import 'package:chess_game/models/snake.dart';
import 'package:equatable/equatable.dart';

class GameState {
  final Snake snake;

  GameState({Snake? snake}) : this.snake = snake ?? Snake();

  GameState copyWith(Snake snake) {
    print(snake.isPaused);
    return GameState(snake: snake);
  }
}
