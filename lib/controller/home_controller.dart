import 'package:lesson5/model/game_model.dart';

import '../view/home_screen.dart';

class HomeController {
  HomeState state;
  HomeController(this.state);

  void onPressedNewGame() {
    state.callSetState(() {
      state.model.restart();
    });
  }

  void onPressedBoard(int index) {
    state.callSetState(() {
      state.model.board[index] = state.model.turn;
      state.model.changeTurns();
      state.model.setWinner();
      if (state.model.winner != null) {
        state.model.state = GameState.over;
      }
    });
  }
}
