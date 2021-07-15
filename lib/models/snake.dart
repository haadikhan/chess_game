import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum Direction { up, down, left, right }

class Snake {
  Direction direction = Direction.right;
  double posX = 2;
  double posY = 2;
  bool isPaused = false;

  moveSnake() {
    if (isPaused == true) {
      return;
    }
    if (direction == Direction.left) {
      posX -= 10;
    }
    if (direction == Direction.down) {
      posY += 10;
    }
    if (direction == Direction.up) {
      posY -= 10;
    }
    if (direction == Direction.right) {
      posX += 10;
    }
    // print(posX);
    // print(posY);
  }

  togglePause() {
    isPaused = !isPaused;
  }

  changeDirection(Direction value) {
    if (direction == Direction.left && value == Direction.right) {
      return;
    }
    if (direction == Direction.right && value == Direction.left) {
      return;
    }

    if (direction == Direction.down && value == Direction.up) {
      return;
    }

    if (direction == Direction.up && value == Direction.down) {
      return;
    }
    direction = value;
    // print(direction);
  }
}
