import 'package:objectbox/objectbox.dart';

@Entity()
class BokeyaSonchoySchema {
  @Id(assignable: true)
  int? id;

  String? receiptNum;
  String? sl2;
  String? date;
  String? sIdCS;
  String? sName;
  String? sAcSectorId;
  String? sAcSectorName;
  String? sAcDesId;
  String? sAcDesName;
  String? sSelectDrCr;
  String? sDrBalance;
  String? sCrBalance;
  String? sBalance;
  String? sTotalBalance;
  String? sComments;
  String? accountNo;
  String? name;
  String? acSectorId;
  String? acSectorName;
  String? acDesId;
  String? acDesName;
  String? selectDrCr;
  String? drAmount;
  String? crAmount;
  String? balance;
  String? totalBalance;
  String? comments;
  String? ppSName;
  String? serial;
  String? kisti;
  String? checkValue;
  String? cc;
  String? soCode;
  String? password;
  String? phoneNo;
  String? barirCode;
  String? withdraw;
  String? nameSabekCash;
  String? invoice;
  String? kaliyaAc;
  String? opCode;
  String? kistiSale;
  String? a;
  String? b;
  String? comment;
  String? adayTaka;
  String? currentSonchoy;
  String? jomakarirName;
  String? cashJoma;
  String? qTotal;
  String? cashierName;
  String? adayBiboron;
  String? cashKhaSName;
  String? cashKhaSNumb;
  String? submitBy;
  String? jomakarirId;
  String? date2;
  String? value2;
  String? cSoCode;
  String? pokkyJomakarirName;
  String? chk5;
  String? checkValue2;
  String? kistiReposting;
  String? oldSl2;
  String? srDhoron;
  String? meyad;
  String? sonchoyDueTaka;
  String? kistiDueTaka;
  String? pCode;
  String? collectionBar;

  BokeyaSonchoySchema(
      {this.id = 0,
        this.receiptNum,
        this.sl2,
        this.date,
        this.sIdCS,
        this.sName,
        this.sAcSectorId,
        this.sAcSectorName,
        this.sAcDesId,
        this.sAcDesName,
        this.sSelectDrCr,
        this.sDrBalance,
        this.sCrBalance,
        this.sBalance,
        this.sTotalBalance,
        this.sComments,
        this.accountNo,
        this.name,
        this.acSectorId,
        this.acSectorName,
        this.acDesId,
        this.acDesName,
        this.selectDrCr,
        this.drAmount,
        this.crAmount,
        this.balance,
        this.totalBalance,
        this.comments,
        this.ppSName,
        this.serial,
        this.kisti,
        this.checkValue,
        this.cc,
        this.soCode,
        this.password,
        this.phoneNo,
        this.barirCode,
        this.withdraw,
        this.nameSabekCash,
        this.invoice,
        this.kaliyaAc,
        this.opCode,
        this.kistiSale,
        this.a,
        this.b,
        this.comment,
        this.adayTaka,
        this.currentSonchoy,
        this.jomakarirName,
        this.cashJoma,
        this.qTotal,
        this.cashierName,
        this.adayBiboron,
        this.cashKhaSName,
        this.cashKhaSNumb,
        this.submitBy,
        this.jomakarirId,
        this.date2,
        this.value2,
        this.cSoCode,
        this.pokkyJomakarirName,
        this.chk5,
        this.checkValue2,
        this.kistiReposting,
        this.oldSl2,
        this.srDhoron,
        this.meyad,
        this.sonchoyDueTaka,
        this.kistiDueTaka,
        this.pCode,
        this.collectionBar});

  BokeyaSonchoySchema.fromJson(Map<String, dynamic> json) {
    receiptNum = json['receipt_num'];
    sl2 = json['sl_2'];
    date = json['date'];
    sIdCS = json['s_id_c_s'];
    sName = json['s_name'];
    sAcSectorId = json['s_ac_sector_id'];
    sAcSectorName = json['s_ac_sector_name'];
    sAcDesId = json['s_ac_des_id'];
    sAcDesName = json['s_ac_des_name'];
    sSelectDrCr = json['s_select_dr_cr'];
    sDrBalance = json['s_dr_balance'];
    sCrBalance = json['s_cr_balance'];
    sBalance = json['s_balance'];
    sTotalBalance = json['s_total_balance'];
    sComments = json['s_comments'];
    accountNo = json['account_no'];
    name = json['name'];
    acSectorId = json['ac_sector_id'];
    acSectorName = json['ac_sector_name'];
    acDesId = json['ac_des_id'];
    acDesName = json['ac_des_name'];
    selectDrCr = json['select_dr_cr'];
    drAmount = json['dr_amount'];
    crAmount = json['cr_amount'];
    balance = json['balance'];
    totalBalance = json['total_balance'];
    comments = json['comments'];
    ppSName = json['pp_s_name'];
    serial = json['serial'];
    kisti = json['kisti'];
    checkValue = json['check_value'];
    cc = json['cc'];
    soCode = json['so_code'];
    password = json['password'];
    phoneNo = json['phone_no'];
    barirCode = json['barir_code'];
    withdraw = json['withdraw'];
    nameSabekCash = json['name_sabek_cash'];
    invoice = json['invoice'];
    kaliyaAc = json['kaliya_ac'];
    opCode = json['op_code'];
    kistiSale = json['kisti_sale'];
    a = json['a'];
    b = json['b'];
    comment = json['comment'];
    adayTaka = json['aday_taka'];
    currentSonchoy = json['current_sonchoy'];
    jomakarirName = json['jomakarir_name'];
    cashJoma = json['cash_joma'];
    qTotal = json['Q_total'];
    cashierName = json['cashier_name'];
    adayBiboron = json['aday_biboron'];
    cashKhaSName = json['cash_kha_s_name'];
    cashKhaSNumb = json['cash_kha_s_numb'];
    submitBy = json['submit_by'];
    jomakarirId = json['jomakarir_id'];
    date2 = json['date_2'];
    value2 = json['value_2'];
    cSoCode = json['c_so_code'];
    pokkyJomakarirName = json['pokky_jomakarir_name'];
    chk5 = json['chk_5'];
    checkValue2 = json['check_value_2'];
    kistiReposting = json['kisti_reposting'];
    oldSl2 = json['old_sl_2'];
    srDhoron = json['sr_dhoron'];
    meyad = json['meyad'];
    sonchoyDueTaka = json['sonchoy_due_taka'];
    kistiDueTaka = json['kisti_due_taka'];
    pCode = json['p_code'];
    collectionBar = json['collection_bar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['receipt_num'] = receiptNum;
    data['sl_2'] = sl2;
    data['date'] = date;
    data['s_id_c_s'] = sIdCS;
    data['s_name'] = sName;
    data['s_ac_sector_id'] = sAcSectorId;
    data['s_ac_sector_name'] = sAcSectorName;
    data['s_ac_des_id'] = sAcDesId;
    data['s_ac_des_name'] = sAcDesName;
    data['s_select_dr_cr'] = sSelectDrCr;
    data['s_dr_balance'] = sDrBalance;
    data['s_cr_balance'] = sCrBalance;
    data['s_balance'] = sBalance;
    data['s_total_balance'] = sTotalBalance;
    data['s_comments'] = sComments;
    data['account_no'] = accountNo;
    data['name'] = name;
    data['ac_sector_id'] = acSectorId;
    data['ac_sector_name'] = acSectorName;
    data['ac_des_id'] = acDesId;
    data['ac_des_name'] = acDesName;
    data['select_dr_cr'] = selectDrCr;
    data['dr_amount'] = drAmount;
    data['cr_amount'] = crAmount;
    data['balance'] = balance;
    data['total_balance'] = totalBalance;
    data['comments'] = comments;
    data['pp_s_name'] = ppSName;
    data['serial'] = serial;
    data['kisti'] = kisti;
    data['check_value'] = checkValue;
    data['cc'] = cc;
    data['so_code'] = soCode;
    data['password'] = password;
    data['phone_no'] = phoneNo;
    data['barir_code'] = barirCode;
    data['withdraw'] = withdraw;
    data['name_sabek_cash'] = nameSabekCash;
    data['invoice'] = invoice;
    data['kaliya_ac'] = kaliyaAc;
    data['op_code'] = opCode;
    data['kisti_sale'] = kistiSale;
    data['a'] = a;
    data['b'] = b;
    data['comment'] = comment;
    data['aday_taka'] = adayTaka;
    data['current_sonchoy'] = currentSonchoy;
    data['jomakarir_name'] = jomakarirName;
    data['cash_joma'] = cashJoma;
    data['Q_total'] = qTotal;
    data['cashier_name'] = cashierName;
    data['aday_biboron'] = adayBiboron;
    data['cash_kha_s_name'] = cashKhaSName;
    data['cash_kha_s_numb'] = cashKhaSNumb;
    data['submit_by'] = submitBy;
    data['jomakarir_id'] = jomakarirId;
    data['date_2'] = date2;
    data['value_2'] = value2;
    data['c_so_code'] = cSoCode;
    data['pokky_jomakarir_name'] = pokkyJomakarirName;
    data['chk_5'] = chk5;
    data['check_value_2'] = checkValue2;
    data['kisti_reposting'] = kistiReposting;
    data['old_sl_2'] = oldSl2;
    data['sr_dhoron'] = srDhoron;
    data['meyad'] =meyad;
    data['sonchoy_due_taka'] = sonchoyDueTaka;
    data['kisti_due_taka'] = kistiDueTaka;
    data['p_code'] = pCode;
    data['collection_bar'] = collectionBar;
    return data;
  }
}
