import 'package:LaLu/app/data/models/user_appliance_model.dart';
import 'package:LaLu/app/utils/constants.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class UserApplianceDbService extends GetxService {
  Box<Map<String, dynamic>> _box;

  Future<UserApplianceDbService> init() async {
    _box = await Hive.openBox(USERAPPLIANCEBOX);
    return this;
    //print('akiiii');
  }

  Box<Map<String, dynamic>> get box => _box;
}
