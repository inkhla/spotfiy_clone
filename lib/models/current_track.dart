import 'package:flutter/cupertino.dart';
import 'package:spotfiy_clone/data/data.dart';

class CurrentTrackModel extends ChangeNotifier {
  Song? selected;

  void selectedTrack (Song track)
  {
    selected = track;
    notifyListeners();
  }
}