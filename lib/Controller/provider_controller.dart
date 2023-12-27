import 'package:flutter/material.dart';

class AvatarColorProvider extends ChangeNotifier {
  Color? avatarcolor = Colors.green[300];
  whiteColor() {
    avatarcolor = Colors.white;
    notifyListeners();
  }

  greenColor() {
    avatarcolor = Colors.tealAccent;
    notifyListeners();
  }
}
