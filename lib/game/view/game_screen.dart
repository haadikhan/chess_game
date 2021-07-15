import 'package:chess_game/game/bloc/game_cubit.dart';
import 'package:chess_game/game/bloc/game_state.dart';
import 'package:chess_game/models/drawing_screen.dart';
import 'package:chess_game/models/snake.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                UpBTN(),
                MaterialButton(
                  onPressed: () {
                    context.read<GameCubit>().onDownButtonPressed();
                  },
                  child: Text('DOWN'),
                ),
                MaterialButton(
                  onPressed: () {
                    context.read<GameCubit>().onLeftButtonPressed();
                  },
                  child: Text('left'),
                ),
                MaterialButton(
                  onPressed: () {
                    context.read<GameCubit>().onRightButtonPressed();
                  },
                  child: Text('right'),
                ),
                BlocBuilder<GameCubit, GameState>(builder: (context, state) {
                  print(state.snake.isPaused);
                  return MaterialButton(
                    onPressed: () {
                      context.read<GameCubit>().onPausedButtonPressed();
                    },
                    child: Text(state.snake.isPaused ? 'Play' : 'pause'),
                  );
                }),
                BlocBuilder<GameCubit, GameState>(builder: (context, state) {
                  return Text(state.snake.posX.toString());
                }),
                BlocBuilder<GameCubit, GameState>(builder: (context, state) {
                  return Text(state.snake.posY.toString());
                }),
              ],
            ),
          ),
          // BlocBuilder<GameCubit, GameState>(builder: (context, state) {
          //   return Expanded(child: DrawingScreen(state.snake));
          // }),
        ],
      ),
    );
  }
}

class UpBTN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context.read<GameCubit>().onUpButtonPressed();
      },
      child: Text('Up'),
    );
  }
}

// class UpBTN extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//       onPressed: () {
//         context.read<GameCubit>().onUpButtonPressed();
//       },
//       child: Text('Up'),
//     );
//   }
// }
// class UpBTN extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//       onPressed: () {
//         context.read<GameCubit>().onUpButtonPressed();
//       },
//       child: Text('Up'),
//     );
//   }
// }
class RightBTN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context.read<GameCubit>().onRightButtonPressed();
      },
      child: Text('Right'),
    );
  }
}
