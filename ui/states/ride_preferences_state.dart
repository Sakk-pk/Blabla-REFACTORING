import 'package:flutter/material.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:blabla/repositories/ride_preference/ride_preference_repository.dart';

class RidePreferencesState extends ChangeNotifier {
  final RidePreferencesRepository repository;

  RidePreferencesState(this.repository);

  RidePreference? _currentPreference;
  static const int maxAllowedSeats = 8;

  RidePreference? get currentPreference => _currentPreference;

  List<RidePreference> get history => repository.getPreferenceHistory();

  void selectPreference(RidePreference preference) {
    if (_currentPreference != preference) {
      _currentPreference = preference;

      repository.addPreferenceToHistory(preference);

      notifyListeners();
    }
  }
}
