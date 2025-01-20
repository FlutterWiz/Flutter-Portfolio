import 'package:hive_ce/hive.dart';
import 'dart:ui';

class LocaleAdapter extends TypeAdapter<Locale> {
  @override
  Locale read(BinaryReader reader) {
    final languageCode = reader.readString();
    return Locale(languageCode);
  }

  @override
  void write(BinaryWriter writer, Locale obj) {
    writer.writeString(obj.languageCode);
  }

  @override
  final int typeId = 0;
}
