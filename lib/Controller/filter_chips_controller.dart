import 'package:flutter/cupertino.dart';

class FilterChipsController extends ValueNotifier<List<String>> {
  FilterChipsController() : super([all]);
  static const all = 'All';

  void add(String selectedvalue) {
    if (value.contains(selectedvalue)) {
      value.remove(selectedvalue);
      if (value.isEmpty) {
        value.add(all);
      }
    } else {
      if (selectedvalue == all) {
        value = [];
      } else {
        value.remove(all);
      }
       value.add(selectedvalue);
    }
    super.notifyListeners();
  }
}
