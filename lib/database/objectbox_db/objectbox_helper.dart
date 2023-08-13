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
          soCode: sheet.soCode.toString(),
          accountNo: sheet.accountNo ?? '',
          opCode: sheet.opCode ?? '',
          serial: sheet.serial.toString(),
          sodossoName: sheet.sodossoName ?? '',
          sodossoStatus: sheet.sodossoStatus.toString(),
          pCode: sheet.pCode.toString(),
          collectionBar: sheet.collectionBar ?? '',
          sonchoyCollectionStatus:
              sheet.sonchoyCollectionStatus.toString(),
          kistiCollectionStatus:
              sheet.kistiCollectionStatus.toString(),
          gatewayCheckSonchoy:
              sheet.gatewayCheckSonchoy.toString(),
          gatewayCheckKisti: sheet.gatewayCheckKisti.toString(),
          sep22: sheet.sep22 ?? '',
          chk: sheet.chk.toString(),
          sonchoyBookBl: sheet.sonchoyBookBl.toString(),
          onlineSonchoyBl: sheet.onlineSonchoyBl.toString(),
          sonchoyPorikkito: sheet.sonchoyPorikkito ?? '',
          kistiBookBl: sheet.kistiBookBl.toString(),
          onlineKistiBl: sheet.onlineSonchoyBl.toString(),
          kistiPorikkito: sheet.kistiPorikkito ?? '',
          porikkhito: sheet.porikkhito ?? '',
          sonchoy: sheet.sonchoy ?? '',
          kisti: sheet.kisti ?? '',
          profitOfPerInstallment:
              sheet.profitOfPerInstallment.toString(),
          barirCode: sheet.barirCode.toString(),
          walkOrder: sheet.walkOrder.toString(),
          barirNameE: sheet.barirNameE ?? '',
          barirName: sheet.barirName ?? '',
          elakarName: sheet.elakarName ?? '',
          landMark: sheet.landMark ?? '',
          dollCode: sheet.dollCode ?? '',
          groupName: sheet.groupName ?? '',
          phoneNo: sheet.phoneNo ?? '',
          cc: sheet.cc.toString(),
          chainNo: sheet.chainNo.toString(),
          post: sheet.post ?? '',
          ppost: sheet.ppost.toString(),
          name: sheet.name ?? '',
          address: sheet.address ?? '',
          kaliyaAc: sheet.kaliyaAc ?? '',
          comment: sheet.comment ?? '',
          userName: sheet.userName ?? '',
          backSodosso: sheet.backSodosso.toString(),
          nextSodosso: sheet.nextSodosso.toString(),
          pouseRelation: sheet.pouseRelation ?? '',
          pouseName: sheet.pouseName ?? '',
          pousePesha: sheet.pousePesha ?? '',
          bSodossoName: sheet.bSodossoName ?? '',
          branch: sheet.branch ?? '',
          timeStamp: sheet.timeStamp ?? '',
          submitBy: sheet.submitBy ?? '',
          reBlPhoto: sheet.reBlPhoto.toString(),
          balanchingChk: sheet.balanchingChk.toString(),
          superChk: sheet.superChk ?? '',
          activation: sheet.activation ?? '',
          sonchoyCollectionDate: sheet.sonchoyCollectionDate ?? '',
          kistiCollectionDate: sheet.kistiCollectionDate ?? '',
          balance: sheet.balance.toString());

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

  Future<void> saveSonchoy(SonchoySchema schema, int id)async{
    await sonchoySubmitBox.putAsync(schema);
    collectionSheetBox.remove(id);
  }

  List<SonchoySchema> getSonchoySchema(){
    return sonchoySubmitBox.getAll();
  }
}
