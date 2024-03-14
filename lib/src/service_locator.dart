part 'service_locator_impl.dart';

abstract class ServiceLocator {
  static final ServiceLocator _instance = _ServiceLocator();
  static ServiceLocator get instance => _instance;

  static ServiceLocator get getNewServiceLocator => _ServiceLocator();

  T put<T extends Object>(T instance,
      {required String key, bool allowReassign = false});

  T get<T>(String key);
}
