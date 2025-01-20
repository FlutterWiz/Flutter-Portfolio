import 'package:alperefesahin_dev/core/di/dependency_injector.dart';
import 'package:alperefesahin_dev/core/init/app_widget.dart';
import 'package:alperefesahin_dev/data/local/local_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  injectionSetup();

  final LocalDatabase _localdb = getIt<LocalDatabase>();
  await _localdb.start();

  runApp(const ProviderScope(child: AppWidget()));
}
