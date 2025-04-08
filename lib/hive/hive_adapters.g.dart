// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class JobAdapter extends TypeAdapter<Job> {
  @override
  final int typeId = 0;

  @override
  Job read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Job(
      jobId: fields[0] as String?,
      title: fields[1] as String?,
      logoPath: fields[2] as String?,
      currency: fields[3] as String?,
      companyName: fields[4] as String?,
      createdDate: (fields[5] as num?)?.toInt(),
      isSaved: fields[6] as bool?,
      tagsAndSkills: fields[7] as String?,
      experienceText: fields[8] as String?,
      jobDescription: fields[9] as String?,
      footerPlaceholderLabel: fields[10] as String?,
      placeholders: (fields[11] as List?)
          ?.map((e) => (e as Map).cast<String, dynamic>())
          .toList(),
    );
  }

  @override
  void write(BinaryWriter writer, Job obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.jobId)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.logoPath)
      ..writeByte(3)
      ..write(obj.currency)
      ..writeByte(4)
      ..write(obj.companyName)
      ..writeByte(5)
      ..write(obj.createdDate)
      ..writeByte(6)
      ..write(obj.isSaved)
      ..writeByte(7)
      ..write(obj.tagsAndSkills)
      ..writeByte(8)
      ..write(obj.experienceText)
      ..writeByte(9)
      ..write(obj.jobDescription)
      ..writeByte(10)
      ..write(obj.footerPlaceholderLabel)
      ..writeByte(11)
      ..write(obj.placeholders);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JobAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
