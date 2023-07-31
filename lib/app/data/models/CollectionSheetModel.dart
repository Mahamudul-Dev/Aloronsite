class CollectionSheetModel {
  CollectionSheetModel({
    this.date,
    this.soCode,
    this.accountNo,
    this.opCode,
    this.serial,
    this.sodossoName,
    this.sodossoStatus,
    this.pCode,
    this.collectionBar,
    this.sonchoyCollectionStatus,
    this.kistiCollectionStatus,
    this.gatewayCheckSonchoy,
    this.gatewayCheckKisti,
    this.sep22,
    this.chk,
    this.sonchoyBookBl,
    this.onlineSonchoyBl,
    this.sonchoyPorikkito,
    this.kistiBookBl,
    this.onlineKistiBl,
    this.kistiPorikkito,
    this.porikkhito,
    this.sonchoy,
    this.kisti,
    this.profitOfPerInstallment,
    this.barirCode,
    this.walkOrder,
    this.barirNameE,
    this.barirName,
    this.elakarName,
    this.landMark,
    this.dollCode,
    this.groupName,
    this.phoneNo,
    this.cc,
    this.chainNo,
    this.post,
    this.ppost,
    this.name,
    this.address,
    this.kaliyaAc,
    this.comment,
    this.userName,
    this.backSodosso,
    this.nextSodosso,
    this.pouseRelation,
    this.pouseName,
    this.pousePesha,
    this.bSodossoName,
    this.branch,
    this.timeStamp,
    this.submitBy,
    this.reBlPhoto,
    this.balanchingChk,
    this.superChk,
    this.activation,
    this.sonchoyCollectionDate,
    this.kistiCollectionDate,
    this.balance,
  });

  CollectionSheetModel.fromJson(dynamic json) {
    date = json['date'];
    soCode = json['so_code'];
    accountNo = json['account_no'];
    opCode = json['op_code'];
    serial = json['serial'];
    sodossoName = json['sodosso_name'];
    sodossoStatus = json['sodosso_status'];
    pCode = json['p_code'];
    collectionBar = json['collection_bar'];
    sonchoyCollectionStatus = json['sonchoy_collection_status'];
    kistiCollectionStatus = json['kisti_collection_status'];
    gatewayCheckSonchoy = json['gateway_check_sonchoy'];
    gatewayCheckKisti = json['gateway_check_kisti'];
    sep22 = json['sep_22'];
    chk = json['chk'];
    sonchoyBookBl = json['sonchoy_book_bl'];
    onlineSonchoyBl = json['online_sonchoy_bl'];
    sonchoyPorikkito = json['sonchoy_porikkito'];
    kistiBookBl = json['kisti_book_bl'];
    onlineKistiBl = json['online_kisti_bl'];
    kistiPorikkito = json['kisti_porikkito'];
    porikkhito = json['porikkhito'];
    sonchoy = json['sonchoy'];
    kisti = json['kisti'];
    profitOfPerInstallment = json['Profit_of_per_installment'];
    barirCode = json['barir_code'];
    walkOrder = json['walk_order'];
    barirNameE = json['barir_name_e'];
    barirName = json['barir_name'];
    elakarName = json['elakar_name'];
    landMark = json['land_mark'];
    dollCode = json['doll_code'];
    groupName = json['group_name'];
    phoneNo = json['phone_no'];
    cc = json['cc'];
    chainNo = json['chain_no'];
    post = json['post'];
    ppost = json['ppost'];
    name = json['name'];
    address = json['address'];
    kaliyaAc = json['kaliya_ac'];
    comment = json['comment'];
    userName = json['user_name'];
    backSodosso = json['back_sodosso'];
    nextSodosso = json['next_sodosso'];
    pouseRelation = json['pouse_relation'];
    pouseName = json['pouse_name'];
    pousePesha = json['pouse_pesha'];
    bSodossoName = json['b_sodosso_name'];
    branch = json['branch'];
    timeStamp = json['time_stamp'];
    submitBy = json['submit_by'];
    reBlPhoto = json['re_bl_photo'];
    balanchingChk = json['balanching_chk'];
    superChk = json['super_chk'];
    activation = json['activation'];
    sonchoyCollectionDate = json['sonchoy_collection_date'];
    kistiCollectionDate = json['kisti_collection_date'];
    balance = json['balance'];
  }
  dynamic date;
  int? soCode;
  String? accountNo;
  String? opCode;
  int? serial;
  String? sodossoName;
  int? sodossoStatus;
  int? pCode;
  String? collectionBar;
  int? sonchoyCollectionStatus;
  int? kistiCollectionStatus;
  int? gatewayCheckSonchoy;
  int? gatewayCheckKisti;
  String? sep22;
  int? chk;
  int? sonchoyBookBl;
  int? onlineSonchoyBl;
  String? sonchoyPorikkito;
  int? kistiBookBl;
  int? onlineKistiBl;
  String? kistiPorikkito;
  String? porikkhito;
  String? sonchoy;
  String? kisti;
  int? profitOfPerInstallment;
  int? barirCode;
  int? walkOrder;
  String? barirNameE;
  String? barirName;
  String? elakarName;
  String? landMark;
  String? dollCode;
  String? groupName;
  String? phoneNo;
  int? cc;
  int? chainNo;
  String? post;
  int? ppost;
  String? name;
  String? address;
  String? kaliyaAc;
  String? comment;
  String? userName;
  int? backSodosso;
  int? nextSodosso;
  String? pouseRelation;
  String? pouseName;
  String? pousePesha;
  String? bSodossoName;
  String? branch;
  String? timeStamp;
  String? submitBy;
  int? reBlPhoto;
  int? balanchingChk;
  String? superChk;
  String? activation;
  dynamic sonchoyCollectionDate;
  dynamic kistiCollectionDate;
  int? balance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['so_code'] = soCode;
    map['account_no'] = accountNo;
    map['op_code'] = opCode;
    map['serial'] = serial;
    map['sodosso_name'] = sodossoName;
    map['sodosso_status'] = sodossoStatus;
    map['p_code'] = pCode;
    map['collection_bar'] = collectionBar;
    map['sonchoy_collection_status'] = sonchoyCollectionStatus;
    map['kisti_collection_status'] = kistiCollectionStatus;
    map['gateway_check_sonchoy'] = gatewayCheckSonchoy;
    map['gateway_check_kisti'] = gatewayCheckKisti;
    map['sep_22'] = sep22;
    map['chk'] = chk;
    map['sonchoy_book_bl'] = sonchoyBookBl;
    map['online_sonchoy_bl'] = onlineSonchoyBl;
    map['sonchoy_porikkito'] = sonchoyPorikkito;
    map['kisti_book_bl'] = kistiBookBl;
    map['online_kisti_bl'] = onlineKistiBl;
    map['kisti_porikkito'] = kistiPorikkito;
    map['porikkhito'] = porikkhito;
    map['sonchoy'] = sonchoy;
    map['kisti'] = kisti;
    map['Profit_of_per_installment'] = profitOfPerInstallment;
    map['barir_code'] = barirCode;
    map['walk_order'] = walkOrder;
    map['barir_name_e'] = barirNameE;
    map['barir_name'] = barirName;
    map['elakar_name'] = elakarName;
    map['land_mark'] = landMark;
    map['doll_code'] = dollCode;
    map['group_name'] = groupName;
    map['phone_no'] = phoneNo;
    map['cc'] = cc;
    map['chain_no'] = chainNo;
    map['post'] = post;
    map['ppost'] = ppost;
    map['name'] = name;
    map['address'] = address;
    map['kaliya_ac'] = kaliyaAc;
    map['comment'] = comment;
    map['user_name'] = userName;
    map['back_sodosso'] = backSodosso;
    map['next_sodosso'] = nextSodosso;
    map['pouse_relation'] = pouseRelation;
    map['pouse_name'] = pouseName;
    map['pouse_pesha'] = pousePesha;
    map['b_sodosso_name'] = bSodossoName;
    map['branch'] = branch;
    map['time_stamp'] = timeStamp;
    map['submit_by'] = submitBy;
    map['re_bl_photo'] = reBlPhoto;
    map['balanching_chk'] = balanchingChk;
    map['super_chk'] = superChk;
    map['activation'] = activation;
    map['sonchoy_collection_date'] = sonchoyCollectionDate;
    map['kisti_collection_date'] = kistiCollectionDate;
    map['balance'] = balance;
    return map;
  }
}
