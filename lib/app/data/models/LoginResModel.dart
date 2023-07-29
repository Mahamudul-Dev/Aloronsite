class LoginResModel {
  LoginResModel({
    required this.message,
    required this.user,
  });
  late final String message;
  late final List<User> user;

  LoginResModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    user = List.from(json['user']).map((e)=>User.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['user'] = user.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class User {
  User({
    required this.userId,
    required this.user,
    required this.active,
    required this.userPorikkitoChk,
    required this.developMg,
    required this.operationMg,
    required this.areaManage,
    required this.md,
    required this.member,
    required this.name,
    required this.lastName,
    required this.userPhoto,
    required this.email,
    required this.mobile,
    required this.address,
    required this.kromic2,
    required this.plusAmount,
    required this.minusAmount,
    required this.organization,
    required this.designation,
    required this.brCode,
    required this.dolCode,
    required this.pack,
    this.date,
    required this.time,
    required this.zxc,
    required this.branch,
    required this.chk_2,
    required this.password,
  });
  late final String userId;
  late final String user;
  late final int active;
  late final String userPorikkitoChk;
  late final String developMg;
  late final String operationMg;
  late final String areaManage;
  late final String md;
  late final String member;
  late final String name;
  late final String lastName;
  late final String userPhoto;
  late final String email;
  late final String mobile;
  late final String address;
  late final int kromic2;
  late final int plusAmount;
  late final int minusAmount;
  late final String organization;
  late final String designation;
  late final String brCode;
  late final String dolCode;
  late final String pack;
  late final Null date;
  late final String time;
  late final String zxc;
  late final String branch;
  late final String chk_2;
  late final String password;

  User.fromJson(Map<String, dynamic> json){
    userId = json['user_id'];
    user = json['user'];
    active = json['active'];
    userPorikkitoChk = json['user_porikkito_chk'];
    developMg = json['develop_mg'];
    operationMg = json['operation_mg'];
    areaManage = json['area_manage'];
    md = json['md'];
    member = json['member'];
    name = json['name'];
    lastName = json['last_name'];
    userPhoto = json['user_photo'];
    email = json['email'];
    mobile = json['mobile'];
    address = json['address'];
    kromic2 = json['kromic2'];
    plusAmount = json['plus_amount'];
    minusAmount = json['minus_amount'];
    organization = json['organization'];
    designation = json['designation'];
    brCode = json['br_code'];
    dolCode = json['dol_code'];
    pack = json['pack'];
    date = null;
    time = json['time'];
    zxc = json['zxc'];
    branch = json['branch'];
    chk_2 = json['chk_2'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_id'] = userId;
    _data['user'] = user;
    _data['active'] = active;
    _data['user_porikkito_chk'] = userPorikkitoChk;
    _data['develop_mg'] = developMg;
    _data['operation_mg'] = operationMg;
    _data['area_manage'] = areaManage;
    _data['md'] = md;
    _data['member'] = member;
    _data['name'] = name;
    _data['last_name'] = lastName;
    _data['user_photo'] = userPhoto;
    _data['email'] = email;
    _data['mobile'] = mobile;
    _data['address'] = address;
    _data['kromic2'] = kromic2;
    _data['plus_amount'] = plusAmount;
    _data['minus_amount'] = minusAmount;
    _data['organization'] = organization;
    _data['designation'] = designation;
    _data['br_code'] = brCode;
    _data['dol_code'] = dolCode;
    _data['pack'] = pack;
    _data['date'] = date;
    _data['time'] = time;
    _data['zxc'] = zxc;
    _data['branch'] = branch;
    _data['chk_2'] = chk_2;
    _data['password'] = password;
    return _data;
  }
}