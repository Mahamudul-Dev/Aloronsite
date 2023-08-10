import 'package:objectbox/objectbox.dart';

@Entity()
class CollectionSheetEntity {


  @Id(assignable: true)
  int id;

  String date;

  @Property(type: PropertyType.int)
  int soCode;

  String accountNo;
  String opCode;

  @Property(type: PropertyType.int)
  int? serial;

  String sodossoName;

  @Property(type: PropertyType.int)
  int sodossoStatus;

  @Property(type: PropertyType.int)
  int pCode;

  String collectionBar;

  @Property(type: PropertyType.int)
  int sonchoyCollectionStatus;

  @Property(type: PropertyType.int)
  int kistiCollectionStatus;

  @Property(type: PropertyType.int)
  int gatewayCheckSonchoy;

  @Property(type: PropertyType.int)
  int gatewayCheckKisti;

  String sep22;

  @Property(type: PropertyType.int)
  int chk;

  @Property(type: PropertyType.int)
  int sonchoyBookBl;

  @Property(type: PropertyType.int)
  int onlineSonchoyBl;

  String sonchoyPorikkito;

  @Property(type: PropertyType.int)
  int kistiBookBl;

  @Property(type: PropertyType.int)
  int onlineKistiBl;

  String kistiPorikkito;
  String porikkhito;
  String sonchoy;
  String kisti;

  @Property(type: PropertyType.int)
  int profitOfPerInstallment;

  @Property(type: PropertyType.int)
  int barirCode;

  @Property(type: PropertyType.int)
  int walkOrder;

  String barirNameE;
  String barirName;
  String elakarName;
  String landMark;
  String dollCode;
  String groupName;
  String phoneNo;

  @Property(type: PropertyType.int)
  int cc;

  @Property(type: PropertyType.int)
  int chainNo;

  String post;

  @Property(type: PropertyType.int)
  int ppost;

  String name;
  String address;
  String kaliyaAc;
  String comment;
  String userName;

  @Property(type: PropertyType.int)
  int backSodosso;

  @Property(type: PropertyType.int)
  int nextSodosso;

  String pouseRelation;
  String pouseName;
  String pousePesha;
  String bSodossoName;
  String branch;
  String timeStamp;
  String submitBy;

  @Property(type: PropertyType.int)
  int reBlPhoto;

  @Property(type: PropertyType.int)
  int balanchingChk;

  String superChk;
  String activation;


  String sonchoyCollectionDate;
  String kistiCollectionDate;

  @Property(type: PropertyType.int)
  int balance;

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
      id: json['id'] ?? 0,
      date: json['date'] ?? '',
      soCode: json['soCode'] ?? 0,
      accountNo: json['accountNo'] ?? '',
      opCode: json['opCode'] ?? '',
      serial: json['serial'] ?? 0,
      sodossoName: json['sodossoName'] ?? '',
      sodossoStatus: json['sodossoStatus'] ?? 0,
      pCode: json['pCode'] ?? 0,
      collectionBar: json['collectionBar'] ?? '',
      sonchoyCollectionStatus: json['sonchoyCollectionStatus'] ?? 0,
      kistiCollectionStatus: json['kistiCollectionStatus'] ?? 0,
      gatewayCheckSonchoy: json['gatewayCheckSonchoy'] ?? 0,
      gatewayCheckKisti: json['gatewayCheckKisti'] ?? 0,
      sep22: json['sep22'] ?? '',
      chk: json['chk'] ?? 0,
      sonchoyBookBl: json['sonchoyBookBl'] ?? 0,
      onlineSonchoyBl: json['onlineSonchoyBl'] ?? 0,
      sonchoyPorikkito: json['sonchoyPorikkito'] ?? '',
      kistiBookBl: json['kistiBookBl'] ?? 0,
      onlineKistiBl: json['onlineKistiBl'] ?? 0,
      kistiPorikkito: json['kistiPorikkito'] ?? '',
      porikkhito: json['porikkhito'] ?? '',
      sonchoy: json['sonchoy'] ?? '',
      kisti: json['kisti'] ?? '',
      profitOfPerInstallment: json['profitOfPerInstallment'] ?? 0,
      barirCode: json['barirCode'] ?? 0,
      walkOrder: json['walkOrder'] ?? 0,
      barirNameE: json['barirNameE'] ?? '',
      barirName: json['barirName'] ?? '',
      elakarName: json['elakarName'] ?? '',
      landMark: json['landMark'] ?? '',
      dollCode: json['dollCode'] ?? '',
      groupName: json['groupName'] ?? '',
      phoneNo: json['phoneNo'] ?? '',
      cc: json['cc'] ?? 0,
      chainNo: json['chainNo'] ?? 0,
      post: json['post'] ?? '',
      ppost: json['ppost'] ?? 0,
      name: json['name'] ?? '',
      address: json['address'] ?? '',
      kaliyaAc: json['kaliyaAc'] ?? '',
      comment: json['comment'] ?? '',
      userName: json['userName'] ?? '',
      backSodosso: json['backSodosso'] ?? 0,
      nextSodosso: json['nextSodosso'] ?? 0,
      pouseRelation: json['pouseRelation'] ?? '',
      pouseName: json['pouseName'] ?? '',
      pousePesha: json['pousePesha'] ?? '',
      bSodossoName: json['bSodossoName'] ?? '',
      branch: json['branch'] ?? '',
      timeStamp: json['timeStamp'] ?? '',
      submitBy: json['submitBy'] ?? '',
      reBlPhoto: json['reBlPhoto'] ?? 0,
      balanchingChk: json['balanchingChk'] ?? 0,
      superChk: json['superChk'] ?? '',
      activation: json['activation'] ?? '',
      sonchoyCollectionDate: json['sonchoyCollectionDate'] ?? '',
      kistiCollectionDate: json['kistiCollectionDate'] ?? '',
      balance: json['balance'] ?? 0,
    );
  }

  // Method to convert entity to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
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
