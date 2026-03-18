import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/model/ride/ride.dart';
import 'ride_repository.dart';

class RidesRepositoryMock implements RidesRepository {
  @override
  List<Ride> getRides() {
    return fakeRides;
  }
}
