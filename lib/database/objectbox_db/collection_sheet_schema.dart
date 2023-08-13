import 'package:objectbox/objectbox.dart';

@Entity()
class CollectionSheetEntity {


  @Id(assignable: true)
  int id;

  String date;

  @Property()
  String soCode;

  String accountNo;
  String opCode;

  @Property()
  String? serial;

  String sodossoName;

  @Property()
  String sodossoStatus;

  @Property()
  String pCode;

  String collectionBar;

  @Property()
  String sonchoyCollectionStatus;

  @Property()
  String kistiCollectionStatus;

  @Property()
  String gatewayCheckSonchoy;

  @Property()
  String gatewayCheckKisti;

  String sep22;

  @Property()
  String chk;

  @Property()
  String sonchoyBookBl;

  @Property()
  String onlineSonchoyBl;

  String sonchoyPorikkito;

  @Property()
  String kistiBookBl;

  @Property()
  String onlineKistiBl;

  String kistiPorikkito;
  String porikkhito;
  String sonchoy;
  String kisti;

  @Property()
  String profitOfPerInstallment;

  @Property()
  String barirCode;

  @Property()
  String walkOrder;

  String barirNameE;
  String barirName;
  String elakarName;
  String landMark;
  String dollCode;
  String groupName;
  String phoneNo;

  @Property()
  String cc;

  @Property()
  String chainNo;

  String post;

  @Property()
  String ppost;

  String name;
  String address;
  String kaliyaAc;
  String comment;
  String userName;

  @Property()
  String backSodosso;

  @Property()
  String nextSodosso;

  String pouseRelation;
  String pouseName;
  String pousePesha;
  String bSodossoName;
  String branch;
  String timeStamp;
  String submitBy;

  @Property()
  String reBlPhoto;

  @Property()
  String balanchingChk;

  String superChk;
  String activation;


  String sonchoyCollectionDate;
  String kistiCollectionDate;

  @Property()
  String balance;

  CollectionSheetEntity(
  {
    this.id = 0,
    required this.date,
    required this.soCode,
    required this.accountNo,
    required this.opCode,
    required this.serial,
    required this.sodossoName,
    required this.sodossoStatus,
    required this.pCode,
    required this.collectionBar,
    required this.sonchoyCollectionStatus,
    required this.kistiCollectionStatus,
    required this.gatewayCheckSonchoy,
    required this.gatewayCheckKisti,
    required this.sep22,
    required this.chk,
    required this.sonchoyBookBl,
    required this.onlineSonchoyBl,
    required this.sonchoyPorikkito,
    required this.kistiBookBl,
    required this.onlineKistiBl,
    required this.kistiPorikkito,
    required this.porikkhito,
    required this.sonchoy,
    required this.kisti,
    required this.profitOfPerInstallment,
    required this.barirCode,
    required this.walkOrder,
    required this.barirNameE,
    required this.barirName,
    required this.elakarName,
    required this.landMark,
    required this.dollCode,
    required this.groupName,
    required this.phoneNo,
    required this.cc,
    required this.chainNo,
    required this.post,
    required this.ppost,
    required this.name,
    required this.address,
    required this.kaliyaAc,
    required this.comment,
    required this.userName,
    required this.backSodosso,
    required this.nextSodosso,
    required this.pouseRelation,
    required this.pouseName,
    required this.pousePesha,
    required this.bSodossoName,
    required this.branch,
    required this.timeStamp,
    required this.submitBy,
    required this.reBlPhoto,
    required this.balanchingChk,
    required this.superChk,
    required this.activation,
    required this.sonchoyCollectionDate,
    required this.kistiCollectionDate,
    required this.balance
});


  factory CollectionSheetEntity.fromJson(Map<String, dynamic> json) {
    return CollectionSheetEntity(
      date: json['date'] ?? '',
      soCode: json['soCode'] ?? '',
      accountNo: json['accountNo'] ?? '',
      opCode: json['opCode'] ?? '',
      serial: json['serial'] ?? '',
      sodossoName: json['sodossoName'] ?? '',
      sodossoStatus: json['sodossoStatus'] ?? '',
      pCode: json['pCode'] ?? '',
      collectionBar: json['collectionBar'] ?? '',
      sonchoyCollectionStatus: json['sonchoyCollectionStatus'] ?? '',
      kistiCollectionStatus: json['kistiCollectionStatus'] ?? '',
      gatewayCheckSonchoy: json['gatewayCheckSonchoy'] ?? '',
      gatewayCheckKisti: json['gatewayCheckKisti'] ?? '',
      sep22: json['sep22'] ?? '',
      chk: json['chk'] ?? '',
      sonchoyBookBl: json['sonchoyBookBl'] ?? '',
      onlineSonchoyBl: json['onlineSonchoyBl'] ?? '',
      sonchoyPorikkito: json['sonchoyPorikkito'] ?? '',
      kistiBookBl: json['kistiBookBl'] ?? '',
      onlineKistiBl: json['onlineKistiBl'] ?? '',
      kistiPorikkito: json['kistiPorikkito'] ?? '',
      porikkhito: json['porikkhito'] ?? '',
      sonchoy: json['sonchoy'] ?? '',
      kisti: json['kisti'] ?? '',
      profitOfPerInstallment: json['profitOfPerInstallment'] ?? '',
      barirCode: json['barirCode'] ?? '',
      walkOrder: json['walkOrder'] ?? '',
      barirNameE: json['barirNameE'] ?? '',
      barirName: json['barirName'] ?? '',
      elakarName: json['elakarName'] ?? '',
      landMark: json['landMark'] ?? '',
      dollCode: json['dollCode'] ?? '',
      groupName: json['groupName'] ?? '',
      phoneNo: json['phoneNo'] ?? '',
      cc: json['cc'] ?? '',
      chainNo: json['chainNo'] ?? '',
      post: json['post'] ?? '',
      ppost: json['ppost'] ?? '',
      name: json['name'] ?? '',
      address: json['address'] ?? '',
      kaliyaAc: json['kaliyaAc'] ?? '',
      comment: json['comment'] ?? '',
      userName: json['userName'] ?? '',
      backSodosso: json['backSodosso'] ?? '',
      nextSodosso: json['nextSodosso'] ?? '',
      pouseRelation: json['pouseRelation'] ?? '',
      pouseName: json['pouseName'] ?? '',
      pousePesha: json['pousePesha'] ?? '',
      bSodossoName: json['bSodossoName'] ?? '',
      branch: json['branch'] ?? '',
      timeStamp: json['timeStamp'] ?? '',
      submitBy: json['submitBy'] ?? '',
      reBlPhoto: json['reBlPhoto'] ?? '',
      balanchingChk: json['balanchingChk'] ?? '',
      superChk: json['superChk'] ?? '',
      activation: json['activation'] ?? '',
      sonchoyCollectionDate: json['sonchoyCollectionDate'] ?? '',
      kistiCollectionDate: json['kistiCollectionDate'] ?? '',
      balance: json['balance'] ?? '',
    );
  }

  // Method to convert entity to JSON
  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'soCode': soCode,
      'accountNo': accountNo,
      'opCode': opCode,
      'serial': serial,
      'sodossoName': sodossoName,
      'sodossoStatus': sodossoStatus,
      'pCode': pCode,
      'collectionBar': collectionBar,
      'sonchoyCollectionStatus': sonchoyCollectionStatus,
      'kistiCollectionStatus': kistiCollectionStatus,
      'gatewayCheckSonchoy': gatewayCheckSonchoy,
      'gatewayCheckKisti': gatewayCheckKisti,
      'sep22': sep22,
      'chk': chk,
      'sonchoyBookBl': sonchoyBookBl,
      'onlineSonchoyBl': onlineSonchoyBl,
      'sonchoyPorikkito': sonchoyPorikkito,
      'kistiBookBl': kistiBookBl,
      'onlineKistiBl': onlineKistiBl,
      'kistiPorikkito': kistiPorikkito,
      'porikkhito': porikkhito,
      'sonchoy': sonchoy,
      'kisti': kisti,
      'profitOfPerInstallment': profitOfPerInstallment,
      'barirCode': barirCode,
      'walkOrder': walkOrder,
      'barirNameE': barirNameE,
      'barirName': barirName,
      'elakarName': elakarName,
      'landMark': landMark,
      'dollCode': dollCode,
      'groupName': groupName,
      'phoneNo': phoneNo,
      'cc': cc,
      'chainNo': chainNo,
      'post': post,
      'ppost': ppost,
      'name': name,
      'address': address,
      'kaliyaAc': kaliyaAc,
      'comment': comment,
      'userName': userName,
      'backSodosso': backSodosso,
      'nextSodosso': nextSodosso,
      'pouseRelation': pouseRelation,
      'pouseName': pouseName,
      'pousePesha': pousePesha,
      'bSodossoName': bSodossoName,
      'branch': branch,
      'timeStamp': timeStamp,
      'submitBy': submitBy,
      'reBlPhoto': reBlPhoto,
      'balanchingChk': balanchingChk,
      'superChk': superChk,
      'activation': activation,
      'sonchoyCollectionDate': sonchoyCollectionDate,
      'kistiCollectionDate': kistiCollectionDate,
      'balance': balance,
    };
  }
}
