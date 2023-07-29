import 'package:objectbox/objectbox.dart';

@Entity()
class User {
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

  User({
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
}