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
}
