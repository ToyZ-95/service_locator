part of 'service_locator.dart';

class _ServiceLocator implements ServiceLocator {
  _ServiceLocator();

  final Map<String, dynamic> _store = {};

  @override
  T put<T extends Object>(T instance, {required String key}) {
    _store[key] = instance;
    return instance;
  }

  @override
  T get<T>(String key) {
    assert(_store.containsKey(key), "The key {$key} does not exist");
    return _store[key] as T;
  }
}
