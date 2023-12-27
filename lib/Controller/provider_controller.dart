import 'package:flutter/material.dart';

class AvatarColorProvider extends ChangeNotifier {
  Color? avatarcolor = Colors.white;
  teal() {
    avatarcolor = Colors.amber;
    notifyListeners();
  }

  tealAccent() {
    avatarcolor = Colors.tealAccent;
    notifyListeners();
  }
}
