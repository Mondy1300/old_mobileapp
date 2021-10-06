import 'package:flutter/foundation.dart';
import 'package:main_project/models/medicines.dart';

class FavoriteModel extends ChangeNotifier {
  List<Drug> _drugs = [];

  List<Drug> get getdrugs => _drugs;

  void addDrugs(drug) {
    _drugs.add(drug);
    notifyListeners();
  }
}
