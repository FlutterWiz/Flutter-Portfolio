import 'dart:ui';

import 'package:alperefesahin_dev/domain/adapter/locale_adapter.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

abstract class ILocalDatabase {
  Future<void> start();
  Future<void> openHiveBox<T>(String boxName);
  Future<void> closeHiveBox();
  Box<T> getHiveBox<T>(String boxName);
  void registerAdapter<T>(int typeId, TypeAdapter<T> typeAdapter);
}

class LocalDatabase implements ILocalDatabase {
  @override
  Future<void> start() async {
    await Hive.initFlutter();

    registerAdapter(0, LocaleAdapter());

    final String settingsBoxName = 'settings';
    await openHiveBox<Locale>(settingsBoxName);
  }

  @override
  void registerAdapter<T>(int typeId, TypeAdapter<T> typeAdapter) {
    if (!Hive.isAdapterRegistered(typeId)) {
      Hive.registerAdapter(typeAdapter);
    }
  }

  @override
  Future<void> openHiveBox<T>(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox<T>(boxName);
    }
  }

  @override
  Future<void> closeHiveBox() async {
    await Hive.close();
  }

  @override
  Box<T> getHiveBox<T>(String boxName) {
    return Hive.box<T>(boxName);
  }
}
