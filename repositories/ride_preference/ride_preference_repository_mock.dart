import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:blabla/repositories/ride_preference/ride_preference_repository.dart';

class RidePreferencesRepositoryMock implements RidePreferencesRepository {
  final List<RidePreference> _preferenceHistory = [];

  @override
  List<RidePreference> getPreferenceHistory() {
    return _preferenceHistory;
  }

  @override
  void addPreferenceToHistory(RidePreference preference) {
    _preferenceHistory.add(preference);
  }
}
