import 'package:objectbox/objectbox.dart';

@Entity()
class UserSchema {
  @Id()
  int id;

  String user_id;
  String user;
  int active;
  String user_porikkito_chk;
  String develop_mg;
  String operation_mg;
  String area_manage;
  String md;
  String member;
  String name;
  String last_name;
  String user_photo;
  String email;
  String mobile;
  String address;
  int kromic2;
  int plus_amount;
  int minus_amount;
  String organization;
  String designation;
  String br_code;
  String dol_code;
  String pack;
  String? date; // Assuming it's a string representation of a date
  String time;
  String zxc;
  String branch;
  String chk_2;
  String password;

  UserSchema({
    this.id = 0,
    required this.user_id,
    required this.user,
    required this.active,
    required this.user_porikkito_chk,
    required this.develop_mg,
    required this.operation_mg,
    required this.area_manage,
    required this.md,
    required this.member,
    required this.name,
    required this.last_name,
    required this.user_photo,
    required this.email,
    required this.mobile,
    required this.address,
    required this.kromic2,
    required this.plus_amount,
    required this.minus_amount,
    required this.organization,
    required this.designation,
    required this.br_code,
    required this.dol_code,
    required this.pack,
    this.date,
    required this.time,
    required this.zxc,
    required this.branch,
    required this.chk_2,
    required this.password,
  });

  factory UserSchema.fromJson(Map<String, dynamic> json) {
    return UserSchema(
      id: json['id'] ?? 0,
      user_id: json['user_id'] ?? '',
      user: json['user'] ?? '',
      active: json['active'] ?? 0,
      user_porikkito_chk: json['user_porikkito_chk'] ?? '',
      develop_mg: json['develop_mg'] ?? '',
      operation_mg: json['operation_mg'] ?? '',
      area_manage: json['area_manage'] ?? '',
      md: json['md'] ?? '',
      member: json['member'] ?? '',
      name: json['name'] ?? '',
      last_name: json['last_name'] ?? '',
      user_photo: json['user_photo'] ?? '',
      email: json['email'] ?? '',
      mobile: json['mobile'] ?? '',
      address: json['address'] ?? '',
      kromic2: json['kromic2'] ?? 0,
      plus_amount: json['plus_amount'] ?? 0,
      minus_amount: json['minus_amount'] ?? 0,
      organization: json['organization'] ?? '',
      designation: json['designation'] ?? '',
      br_code: json['br_code'] ?? '',
      dol_code: json['dol_code'] ?? '',
      pack: json['pack'] ?? '',
      date: json['date'],
      time: json['time'] ?? '',
      zxc: json['zxc'] ?? '',
      branch: json['branch'] ?? '',
      chk_2: json['chk_2'] ?? '',
      password: json['password'] ?? '',
    );
  }

  // Method to convert entity to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': user_id,
      'user': user,
      'active': active,
      'user_porikkito_chk': user_porikkito_chk,
      'develop_mg': develop_mg,
      'operation_mg': operation_mg,
      'area_manage': area_manage,
      'md': md,
      'member': member,
      'name': name,
      'last_name': last_name,
      'user_photo': user_photo,
      'email': email,
      'mobile': mobile,
      'address': address,
      'kromic2': kromic2,
      'plus_amount': plus_amount,
      'minus_amount': minus_amount,
      'organization': organization,
      'designation': designation,
      'br_code': br_code,
      'dol_code': dol_code,
      'pack': pack,
      'date': date,
      'time': time,
      'zxc': zxc,
      'branch': branch,
      'chk_2': chk_2,
      'password': password,
    };
  }
}