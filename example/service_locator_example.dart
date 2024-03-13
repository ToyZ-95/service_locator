import 'package:service_locator/service_locator.dart';

class UserModel {
  String name;
  int rollNumber;
  UserModel({
    required this.name,
    required this.rollNumber,
  });
}

void main() {
  UserModel abcUser = UserModel(name: 'Abcd', rollNumber: 1);
  UserModel pqrUser = UserModel(name: 'Pqr', rollNumber: 2);

  ServiceLocator.instance.put(abcUser, key: 'abc');

  ServiceLocator.instance.put(pqrUser, key: 'pqr');

  ServiceLocator.instance.put(abcUser, key: 'abc');

  ServiceLocator newServiceLocator = ServiceLocator.getNewServiceLocator;

  print(newServiceLocator);

  UserModel abc = ServiceLocator.instance.get('abc');

  print(abc.name);

  abc.name = "xyz";

  UserModel xyz = ServiceLocator.instance.get('abc');
}
