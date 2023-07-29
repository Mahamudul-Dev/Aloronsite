import 'package:aloronsite/app/data/models/LoginResModel.dart' as model;

import './objectbox_singleton.dart';
import 'user_schema.dart';

class ObjectboxHelper {
  final currentUserBox = ObjectBoxSingleton().store.box<User>();

  void saveUser(model.LoginResModel user) async {
    final userObject = User(user_id: user.user.first.userId, user: user.user.first.user, active: user.user.first.active, user_porikkito_chk: user.user.first.userPorikkitoChk, develop_mg: user.user.first.developMg, operation_mg: user.user.first.operationMg, area_manage: user.user.first.areaManage, md: user.user.first.md, member: user.user.first.member, name: user.user.first.name, last_name: user.user.first.lastName, user_photo: user.user.first.userPhoto, email: user.user.first.email, mobile: user.user.first.mobile, address: user.user.first.address, kromic2: user.user.first.kromic2, plus_amount: user.user.first.plusAmount, minus_amount: user.user.first.minusAmount, organization: user.user.first.organization, designation: user.user.first.designation, br_code: user.user.first.brCode, dol_code: user.user.first.dolCode, pack: user.user.first.pack, time: user.user.first.time, zxc: user.user.first.zxc, branch: user.user.first.branch, chk_2: user.user.first.chk_2, password: user.user.first.password);
    currentUserBox.removeAll();
    await currentUserBox.putAsync(userObject);
  }
}