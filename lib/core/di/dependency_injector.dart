import 'package:alperefesahin_dev/data/local/local_database.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void injectionSetup() {
  getIt.registerFactory(() => LocalDatabase());
}
