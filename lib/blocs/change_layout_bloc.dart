import 'package:delivery_app/actions/list_grid_change.dart';
import 'package:flutter/material.dart';

class ChangeLayoutBloc with ChangeNotifier {
  bool _isGridLayout = false;

  bool get isGridLayout => _isGridLayout;

  Future setLayoutState({bool value}) async {
    await layoutStateSave(isGridLayout: value);
    _isGridLayout = value;
    notifyListeners();
  }

  getLayoutCurrentState() async {
    bool layoutState = await getLayoutState();
    _isGridLayout = layoutState;
    notifyListeners();
  }

  switchLayout() async {
    bool layoutState = await getLayoutState();
    if (layoutState) {
      setLayoutState(value: false);
    } else {
      setLayoutState(value: true);
    }
  }
}
