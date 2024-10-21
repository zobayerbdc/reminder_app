import 'package:provider/provider.dart';
import 'package:reminder_apps/provider/auth_provider.dart';

var providers = [
  ChangeNotifierProvider<AuthProvider>(create: ((context) => AuthProvider())),
];
