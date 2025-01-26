// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VolumeinfoAdapter extends TypeAdapter<Volumeinfo> {
  @override
  final int typeId = 2;

  @override
  Volumeinfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Volumeinfo(
      title: fields[0] as String,
      imageLinks: fields[1] as ImageLinks?,
      authors: (fields[2] as List).cast<String>(),
      categories: (fields[3] as List).cast<String>(),
      averageRating: fields[4] as num?,
      ratingsCount: fields[5] as int?,
      previewLink: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Volumeinfo obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.imageLinks)
      ..writeByte(2)
      ..write(obj.authors)
      ..writeByte(3)
      ..write(obj.categories)
      ..writeByte(4)
      ..write(obj.averageRating)
      ..writeByte(5)
      ..write(obj.ratingsCount)
      ..writeByte(6)
      ..write(obj.previewLink);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VolumeinfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
