import 'package:blabla/model/ride_pref/ride_pref.dart';

abstract class RidePreferencesRepository {
  List<RidePreference> getPreferenceHistory();
  void addPreferenceToHistory(RidePreference preference);
}
