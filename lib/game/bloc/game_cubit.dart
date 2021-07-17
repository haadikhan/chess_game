import 'package:bloc/bloc.dart';
import 'package:chess_game/game/bloc/game_state.dart';
import 'package:chess_game/models/snake.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameState()) {
    Stream<int>.periodic(const Duration(milliseconds: 100), (x) => x)
        .listen((event) {
      Snake snake = state.snake;
      snake.moveSnake();
      emit(state.copyWith(snake));
    });
  }

  onUpButtonPressed() {
    Snake snake = state.snake;
    snake.changeDirection(Direction.up);
    emit(state.copyWith(snake));
  }

  onDownButtonPressed() {
    Snake snake = state.snake;
    snake.changeDirection(Direction.down);
    emit(state.copyWith(snake));
  }

  onLeftButtonPressed() {
    Snake snake = state.snake;
    snake.changeDirection(Direction.left);
    emit(state.copyWith(snake));
  }

  onRightButtonPressed() {
    Snake snake = state.snake;
    snake.changeDirection(Direction.right);
    emit(state.copyWith(snake));
  }

  onPausedButtonPressed() {
    Snake snake = state.snake;
    snake.togglePause();
    emit(state.copyWith(snake));
  }
}
