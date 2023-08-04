import 'package:aloronsite/app/data/models/CollectionSheetModel.dart';
import 'package:aloronsite/app/data/models/LoginResModel.dart' as model;
import 'package:logger/logger.dart';

import './objectbox_singleton.dart';
import 'user_schema.dart';
import 'collection_sheet_schema.dart';

class ObjectboxHelper {
  final currentUserBox = ObjectBoxSingleton().store.box<User>();
  final collectionSheetBox =
      ObjectBoxSingleton().store.box<CollectionSheetEntity>();

  void saveUser(model.LoginResModel user) async {
    final userObject = User(
        user_id: user.user.first.userId,
        user: user.user.first.user,
        active: user.user.first.active,
        user_porikkito_chk: user.user.first.userPorikkitoChk,
        develop_mg: user.user.first.developMg,
        operation_mg: user.user.first.operationMg,
        area_manage: user.user.first.areaManage,
        md: user.user.first.md,
        member: user.user.first.member,
        name: user.user.first.name,
        last_name: user.user.first.lastName,
        user_photo: user.user.first.userPhoto,
        email: user.user.first.email,
        mobile: user.user.first.mobile,
        address: user.user.first.address,
        kromic2: user.user.first.kromic2,
        plus_amount: user.user.first.plusAmount,
        minus_amount: user.user.first.minusAmount,
        organization: user.user.first.organization,
        designation: user.user.first.designation,
        br_code: user.user.first.brCode,
        dol_code: user.user.first.dolCode,
        pack: user.user.first.pack,
        time: user.user.first.time,
        zxc: user.user.first.zxc,
        branch: user.user.first.branch,
        chk_2: user.user.first.chk_2,
        password: user.user.first.password);
    currentUserBox.removeAll();
    await currentUserBox.putAsync(userObject);
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

      if(collectionSheetBox.getAll().contains(collection)){
        return Future.value();
      }
      Logger().i(collection);
      return collectionSheetBox.putAsync(collection);

  }

  List<CollectionSheetEntity> getCollectionSheet(){
    return collectionSheetBox.getAll();
  }
}
