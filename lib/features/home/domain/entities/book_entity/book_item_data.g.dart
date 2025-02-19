// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_item_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookItemDataAdapter extends TypeAdapter<BookItemData> {
  @override
  final int typeId = 1;

  @override
  BookItemData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookItemData(
      id: fields[0] as String,
      volumeInfo: fields[1] as Volumeinfo,
    );
  }

  @override
  void write(BinaryWriter writer, BookItemData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.volumeInfo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookItemDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
