import 'package:flutter/foundation.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class UploadPhotoSchema {
  @Id(assignable: true)
  int id;

  @Property()
  String soCode;

  @Property()
  String serial;

  @Property()
  String sodossoName;

  @Property(type: PropertyType.byteVector)
  Uint8List fileBytes;


  @Property()
  String fileName;

  @Property()
  String time;

  @Property()
  int photoStatus;

  UploadPhotoSchema({
    this.id = 0,
    required this.soCode,
    required this.serial,
    required this.sodossoName,
    required this.fileBytes,
    required this.fileName,
    required this.time,
    required this.photoStatus,
  });
}
