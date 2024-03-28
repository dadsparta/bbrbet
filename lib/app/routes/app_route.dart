part of 'app_pages.dart';

abstract class _Paths{
    _Paths._();

    static const main = '/main';
    static const settings = '/settings';
    static const initialRoute =  '/initialroute';
}

abstract class Routes{
  Routes._();
  static const initialRoute = _Paths.initialRoute;
  static const main = _Paths.main;
  static const settings = _Paths.settings;
}