import 'package:objectbox/objectbox.dart';

@Entity()
class SonchoySchema {
  @Id(assignable: true)
  int id;

  @Property()
  String receiptNum;

  @Property()
  String sl2;

  @Property()
  String date;

  @Property()
  String sIdCS;

  @Property()
  String sName;

  @Property()
  String sAcSectorId;

  @Property()
  String sAcSectorName;

  @Property()
  String sAcDesId;

  @Property()
  String sAcDesName;

  @Property()
  String sSelectDrCr;

  @Property()
  String sDrBalance;

  @Property()
  String sCrBalance;

  @Property()
  String sBalance;

  @Property()
  String sTotalBalance;

  @Property()
  String sComments;

  @Property()
  String accountNo;

  @Property()
  String name;

  @Property()
  String acSectorId;

  @Property()
  String acSectorName;

  @Property()
  String acDesId;

  @Property()
  String acDesName;

  @Property()
  String selectDrCr;

  @Property()
  String drAmount;

  @Property()
  String crAmount;

  @Property()
  String balance;

  @Property()
  String totalBalance;

  @Property()
  String comments;

  @Property()
  String ppSName;

  @Property()
  String serial;

  @Property()
  String kisti;

  @Property()
  String checkValue;

  @Property()
  String cc;

  @Property()
  String soCode;

  @Property()
  String password;

  @Property()
  String phoneNo;

  @Property()
  String barirCode;

  @Property()
  String withdraw;

  @Property()
  String nameSabekCash;

  @Property()
  String invoice;

  @Property()
  String kaliyaAc;

  @Property()
  String opCode;

  @Property()
  String kistiSale;

  @Property()
  String a;

  @Property()
  String b;

  @Property()
  String comment;

  @Property()
  String adayTaka;

  @Property()
  String currentSonchoy;

  @Property()
  String jomakarirName;

  @Property()
  String cashJoma;

  @Property()
  String qTotal;

  @Property()
  String cashierName;

  @Property()
  String adayBiboron;

  @Property()
  String cashKhaSName;

  @Property()
  String cashKhaSNumber;

  @Property()
  String submitBy;

  @Property()
  String jomakarirId;

  @Property()
  String date2;

  @Property()
  String value2;

  @Property()
  String cSoCode;

  @Property()
  String pokkyJomakarirName;

  @Property()
  String chk5;

  @Property()
  String checkValue2;

  @Property()
  String kistiReposting;

  @Property()
  String oldSl2;

  @Property()
  String sonchoyDueTaka;

  @Property()
  String kistiDueTaka;

  @Property()
  String collectionBar;

  @Property()
  String pCode;

  @Property()
  String collectionStatus;

  @Property()
  String chkSkip;

  SonchoySchema(
      {this.id = 0,
      required this.receiptNum,
      required this.sl2,
      required this.date,
      required this.sIdCS,
      required this.sName,
      required this.sAcSectorId,
      required this.sAcSectorName,
      required this.sAcDesId,
      required this.sAcDesName,
      required this.sSelectDrCr,
      required this.sDrBalance,
      required this.sCrBalance,
      required this.sBalance,
      required this.sTotalBalance,
      required this.sComments,
      required this.accountNo,
      required this.name,
      required this.acSectorId,
      required this.acSectorName,
      required this.acDesId,
      required this.acDesName,
      required this.selectDrCr,
      required this.drAmount,
      required this.crAmount,
      required this.balance,
      required this.totalBalance,
      required this.comments,
      required this.ppSName,
      required this.serial,
      required this.kisti,
      required this.checkValue,
      required this.cc,
      required this.soCode,
      required this.password,
      required this.phoneNo,
      required this.barirCode,
      required this.withdraw,
      required this.nameSabekCash,
      required this.invoice,
      required this.kaliyaAc,
      required this.opCode,
      required this.kistiSale,
      required this.a,
      required this.b,
      required this.comment,
      required this.adayTaka,
      required this.currentSonchoy,
      required this.jomakarirName,
      required this.cashJoma,
      required this.qTotal,
      required this.cashierName,
      required this.adayBiboron,
      required this.cashKhaSName,
      required this.cashKhaSNumber,
      required this.submitBy,
      required this.jomakarirId,
      required this.date2,
      required this.value2,
      required this.cSoCode,
      required this.pokkyJomakarirName,
      required this.chk5,
      required this.checkValue2,
      required this.kistiReposting,
      required this.oldSl2,
      required this.sonchoyDueTaka,
      required this.kistiDueTaka,
      required this.collectionBar,
      required this.pCode,
      required this.collectionStatus,
      required this.chkSkip});

  factory SonchoySchema.fromJson(Map<String, dynamic> json) {
    return SonchoySchema(
      receiptNum: json['receipt_num'] ?? '',
      sl2: json['sl_2'] ?? '',
      date: json['date'] ?? '',
      sIdCS: json['s_id_c_s'] ?? '',
      sName: json['s_name'] ?? '',
      sAcSectorId: json['s_ac_sector_id'] ?? '',
      sAcSectorName: json['s_ac_sector_name'] ?? '',
      sAcDesId: json['s_ac_des_id'] ?? '',
      sAcDesName: json['s_ac_des_name'] ?? '',
      sSelectDrCr: json['s_select_dr_cr'] ?? '',
      sDrBalance: json['s_dr_balance'] ?? '',
      sCrBalance: json['s_cr_balance'] ?? '',
      sBalance: json['s_balance'] ?? '',
      sTotalBalance: json['s_total_balance'] ?? '',
      sComments: json['s_comments'] ?? '',
      accountNo: json['account_no'] ?? '',
      name: json['name'] ?? '',
      acSectorId: json['ac_sector_id'] ?? '',
      acSectorName: json['ac_sector_name'] ?? '',
      acDesId: json['ac_des_id'] ?? '',
      acDesName: json['ac_des_name'] ?? '',
      selectDrCr: json['select_dr_cr'] ?? '',
      drAmount: json['dr_amount'] ?? '',
      crAmount: json['cr_amount'] ?? '',
      balance: json['balance'] ?? '',
      totalBalance: json['total_balance'] ?? '',
      comments: json['comments'] ?? '',
      ppSName: json['pp_s_name'] ?? '',
      serial: json['serial'] ?? '',
      kisti: json['kisti'] ?? '',
      checkValue: json['check_value'] ?? '',
      cc: json['cc'] ?? '',
      soCode: json['so_code'] ?? '',
      password: json['password'] ?? '',
      phoneNo: json['phone_no'] ?? '',
      barirCode: json['barir_code'] ?? '',
      withdraw: json['withdraw'] ?? '',
      nameSabekCash: json['name_sabek_cash'] ?? '',
      invoice: json['invoice'] ?? '',
      kaliyaAc: json['kaliya_ac'] ?? '',
      opCode: json['op_code'] ?? '',
      kistiSale: json['kisti_sale'] ?? '',
      a: json['a'] ?? '',
      b: json['b'] ?? '',
      comment: json['comment'] ?? '',
      adayTaka: json['aday_taka'] ?? '',
      currentSonchoy: json['current_sonchoy'] ?? '',
      jomakarirName: json['jomakarir_name'] ?? '',
      cashJoma: json['cash_joma'] ?? '',
      qTotal: json['Q_total'] ?? '',
      cashierName: json['cashier_name'] ?? '',
      adayBiboron: json['aday_biboron'] ?? '',
      cashKhaSName: json['cash_kha_s_name'] ?? '',
      cashKhaSNumber: json['cash_kha_s_numb'] ?? '',
      submitBy: json['submit_by'] ?? '',
      jomakarirId: json['jomakarir_id'] ?? '',
      date2: json['date_2'] ?? '',
      value2: json['value_2'] ?? '',
      cSoCode: json['c_so_code'] ?? '',
      pokkyJomakarirName: json['pokky_jomakarir_name'] ?? '',
      chk5: json['chk_5'] ?? '',
      checkValue2: json['check_value_2'] ?? '',
      kistiReposting: json['kisti_reposting'] ?? '',
      oldSl2: json['old_sl_2'] ?? '',
      sonchoyDueTaka: json['sonchoy_due_taka'] ?? '',
      kistiDueTaka: json['kisti_due_taka'] ?? '',
      collectionBar: json['collection_bar'] ?? '',
      pCode: json['p_code'] ?? '',
      collectionStatus: json['collection_status'] ?? '',
      chkSkip: json['chk_skip'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'receipt_num': receiptNum,
      'sl_2': sl2,
      'date': date,
      's_id_c_s': sIdCS,
      's_name': sName,
      's_ac_sector_id': sAcSectorId,
      's_ac_sector_name': sAcSectorName,
      's_ac_des_id': sAcDesId,
      's_ac_des_name': sAcDesName,
      's_select_dr_cr': sSelectDrCr,
      's_dr_balance': sDrBalance,
      's_cr_balance': sCrBalance,
      's_balance': sBalance,
      's_total_balance': sTotalBalance,
      's_comments': sComments,
      'account_no': accountNo,
      'name': name,
      'ac_sector_id': acSectorId,
      'ac_sector_name': acSectorName,
      'ac_des_id': acDesId,
      'ac_des_name': acDesName,
      'select_dr_cr': selectDrCr,
      'dr_amount': drAmount,
      'cr_amount': crAmount,
      'balance': balance,
      'total_balance': totalBalance,
      'comments': comments,
      'pp_s_name': ppSName,
      'serial': serial,
      'kisti': kisti,
      'check_value': checkValue,
      'cc': cc,
      'so_code': soCode,
      'password': password,
      'phone_no': phoneNo,
      'barir_code': barirCode,
      'withdraw': withdraw,
      'name_sabek_cash': nameSabekCash,
      'invoice': invoice,
      'kaliya_ac': kaliyaAc,
      'op_code': opCode,
      'kisti_sale': kistiSale,
      'a': a,
      'b': b,
      'comment': comment,
      'aday_taka': adayTaka,
      'current_sonchoy': currentSonchoy,
      'jomakarir_name': jomakarirName,
      'cash_joma': cashJoma,
      'Q_total': qTotal,
      'cashier_name': cashierName,
      'aday_biboron': adayBiboron,
      'cash_kha_s_name': cashKhaSName,
      'cash_kha_s_numb': cashKhaSNumber,
      'submit_by': submitBy,
      'jomakarir_id': jomakarirId,
      'date_2': date2,
      'value_2': value2,
      'c_so_code': cSoCode,
      'pokky_jomakarir_name': pokkyJomakarirName,
      'chk_5': chk5,
      'check_value_2': checkValue2,
      'kisti_reposting': kistiReposting,
      'old_sl_2': oldSl2,
      'sonchoy_due_taka': sonchoyDueTaka,
      'kisti_due_taka': kistiDueTaka,
      'collection_bar': collectionBar,
      'p_code': pCode,
      'collection_status': collectionStatus,
      'chk_skip': chkSkip,
    };
  }
}
