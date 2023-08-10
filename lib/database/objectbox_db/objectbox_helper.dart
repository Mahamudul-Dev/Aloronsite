import 'package:aloronsite/app/data/models/CollectionSheetModel.dart';
import 'package:aloronsite/database/objectbox_db/kisti_schema.dart';
import 'package:aloronsite/database/objectbox_db/sonchoy_schema.dart';
import 'package:aloronsite/database/objectbox_db/upload_photo_schema.dart';
import 'package:logger/logger.dart';

import '../../app/data/models/LoginResModel.dart';
import './objectbox_singleton.dart';
import 'bokeya_sonchoy_schema.dart';
import 'user_schema.dart';
import 'collection_sheet_schema.dart';

class ObjectboxHelper {
  final currentUserBox = ObjectBoxSingleton().store.box<UserSchema>();
  final uploadPhotoBox = ObjectBoxSingleton().store.box<UploadPhotoSchema>();
  final collectionSheetBox =
      ObjectBoxSingleton().store.box<CollectionSheetEntity>();
  final sonchoySubmitBox = ObjectBoxSingleton().store.box<SonchoySchema>();
  final bokeyaSonchoyBox = ObjectBoxSingleton().store.box<BokeyaSonchoySchema>();
  final kistiSubmitBox = ObjectBoxSingleton().store.box<KistiSchema>();
  final bokeyaKistiBox = ObjectBoxSingleton().store.box<BokeyaSonchoySchema>();

  void saveUser(LoginResModel user) async {
    currentUserBox.removeAll();
    final schema = UserSchema.fromJson(user.user.first.toJson());
    await currentUserBox.putAsync(schema);
  }

  Future<void> saveCollectionSheet(CollectionSheetModel sheet) {
      final collection = CollectionSheetEntity(
          date: sheet.date ?? '',
          soCode: sheet.soCode ?? 00,
          accountNo: sheet.accountNo ?? '',
          opCode: sheet.opCode ?? '',
          serial: sheet.serial,
          sodossoName: sheet.sodossoName ?? '',
          sodossoStatus: sheet.sodossoStatus ?? 00,
          pCode: sheet.pCode ?? 00,
          collectionBar: sheet.collectionBar ?? '',
          sonchoyCollectionStatus:
              sheet.sonchoyCollectionStatus ?? 00,
          kistiCollectionStatus:
              sheet.kistiCollectionStatus ?? 00,
          gatewayCheckSonchoy:
              sheet.gatewayCheckSonchoy ?? 00,
          gatewayCheckKisti: sheet.gatewayCheckKisti ?? 00,
          sep22: sheet.sep22 ?? '',
          chk: sheet.chk ?? 00,
          sonchoyBookBl: sheet.sonchoyBookBl ?? 00,
          onlineSonchoyBl: sheet.onlineSonchoyBl ?? 00,
          sonchoyPorikkito: sheet.sonchoyPorikkito ?? '',
          kistiBookBl: sheet.kistiBookBl ?? 00,
          onlineKistiBl: sheet.onlineSonchoyBl ?? 00,
          kistiPorikkito: sheet.kistiPorikkito ?? '',
          porikkhito: sheet.porikkhito ?? '',
          sonchoy: sheet.sonchoy ?? '',
          kisti: sheet.kisti ?? '',
          profitOfPerInstallment:
              sheet.profitOfPerInstallment ?? 00,
          barirCode: sheet.barirCode ?? 00,
          walkOrder: sheet.walkOrder ?? 00,
          barirNameE: sheet.barirNameE ?? '',
          barirName: sheet.barirName ?? '',
          elakarName: sheet.elakarName ?? '',
          landMark: sheet.landMark ?? '',
          dollCode: sheet.dollCode ?? '',
          groupName: sheet.groupName ?? '',
          phoneNo: sheet.phoneNo ?? '',
          cc: sheet.cc ?? 00,
          chainNo: sheet.chainNo ?? 00,
          post: sheet.post ?? '',
          ppost: sheet.ppost ?? 00,
          name: sheet.name ?? '',
          address: sheet.address ?? '',
          kaliyaAc: sheet.kaliyaAc ?? '',
          comment: sheet.comment ?? '',
          userName: sheet.userName ?? '',
          backSodosso: sheet.backSodosso ?? 00,
          nextSodosso: sheet.nextSodosso ?? 00,
          pouseRelation: sheet.pouseRelation ?? '',
          pouseName: sheet.pouseName ?? '',
          pousePesha: sheet.pousePesha ?? '',
          bSodossoName: sheet.bSodossoName ?? '',
          branch: sheet.branch ?? '',
          timeStamp: sheet.timeStamp ?? '',
          submitBy: sheet.submitBy ?? '',
          reBlPhoto: sheet.reBlPhoto ?? 00,
          balanchingChk: sheet.balanchingChk ?? 00,
          superChk: sheet.superChk ?? '',
          activation: sheet.activation ?? '',
          sonchoyCollectionDate: sheet.sonchoyCollectionDate ?? '',
          kistiCollectionDate: sheet.kistiCollectionDate ?? '',
          balance: sheet.balance ?? 00);

      if(collectionSheetBox.getAll().any((element) => element.sodossoName == collection.sodossoName && element.serial == collection.serial && element.name == collection.name)){
        return Future.value();
      }
      Logger().i(collection);
      return collectionSheetBox.putAsync(collection);

  }

  List<CollectionSheetEntity> getCollectionSheet(){
    return collectionSheetBox.getAll();
  }

  Future<void> savePhotoReceiptLocal(UploadPhotoSchema photoSchema)async{
    await uploadPhotoBox.putAsync(photoSchema);
  }

  Future<void> saveSonchoy(SonchoySchema schema)async{
    await sonchoySubmitBox.putAsync(schema);
  }
}
